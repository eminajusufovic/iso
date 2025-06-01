output "alb_dns" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.app_alb.dns_name
}
