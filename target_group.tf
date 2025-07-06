resource "aws_lb_target_group" "alb_tg" {
  name     = "${var.vpc_name}-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main.id
}
resource "aws_lb_target_group_attachment" "alb_tg_attachment" {
  count            = var.ec2_instance_1_count
  target_group_arn = aws_lb_target_group.alb_tg.arn
  target_id        = aws_instance.ec2_instance_1[count.index].id
  port             = 80
}