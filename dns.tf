resource "cloudflare_record" "iac" {
  zone_id = var.cf_zone_id
  name    = var.cf_record_name
  value   = aws_instance.web.public_dns
  type    = var.cf_record_type
  proxied = true
}
