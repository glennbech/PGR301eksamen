resource "aws_cloudwatch_metric_alarm" "threshold" {
  alarm_name  = "${var.alarm_prefix}-threshold"
  namespace   = var.alarm_prefix
  metric_name = "ScanFaceForPPE_timer.max"

  comparison_operator = "GreaterThanThreshold"
  threshold           = var.threshold
  evaluation_periods  = "2"
  period              = "60"
  statistic           = "Maximum"

  alarm_description = "This alarm goes off as soon as the time for \"scanFaceForPPE\" exceeds the treshold "
  alarm_actions     = [aws_sns_topic.user_updates.arn]
}

resource "aws_sns_topic" "user_updates" {
  name = "${var.alarm_prefix}-alarm-topic"
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = aws_sns_topic.user_updates.arn
  protocol  = "email"
  endpoint  = var.alarm_email
}
