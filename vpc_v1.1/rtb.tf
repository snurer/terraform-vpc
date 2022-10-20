resource "aws_route_table" "pub_rtb" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-pub-rtb"
  }
}
resource "aws_route_table" "priv_rtb" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.env}-priv-rtb"
  }
}
resource "aws_route" "internet_route" {
  route_table_id         = aws_route_table.pub_rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev_igw.id
}

#Public Route Table association with Public Subnets
resource "aws_route_table_association" "pub_sub1_rt" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.pub_rtb.id
}
resource "aws_route_table_association" "pub_sub2_rt" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.pub_rtb.id
}
resource "aws_route_table_association" "pub_sub3_rt" {
  subnet_id      = aws_subnet.public_subnet3.id
  route_table_id = aws_route_table.pub_rtb.id
}

#Private Route Table Association with Private Subnets
resource "aws_route_table_association" "priv_sub1_rt" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.priv_rtb.id
}
resource "aws_route_table_association" "priv_sub2_rt" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.priv_rtb.id
}
resource "aws_route_table_association" "priv_sub3_rt" {
  subnet_id      = aws_subnet.private_subnet3.id
  route_table_id = aws_route_table.priv_rtb.id
}