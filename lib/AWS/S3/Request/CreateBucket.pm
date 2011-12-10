
package 
AWS::S3::Request::CreateBucket;

use VSO;
use AWS::S3::HTTPRequest;

extends 'AWS::S3::Request';


sub http_request
{
  my $s = shift;

  return AWS::S3::HTTPRequest->new(
    s3      => $s->s3,
    method  => 'PUT',
    path    => $s->_uri('') . '',
  )->http_request;
}# end http_request()

1;# return true:

