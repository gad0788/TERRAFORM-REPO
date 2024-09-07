resource "aws_route53_record" "rc1" {
  zone_id = "Z0319926K2HLBRS8NWD0"
  type    = "A"
  ttl     = 300
  name    = "resume.kayband.com"
  records = [aws_lightsail_instance.server1.public_ip_address]
}