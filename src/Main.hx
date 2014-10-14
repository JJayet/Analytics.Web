import js.Node;

class Main {
  public static function main() {
    var server = Node.http.createServer( function(
      req:NodeHttpServerReq, res:NodeHttpServerResp){
        res.setHeader("Content-Type","text/html");
        res.writeHead(200);
        res.end('<html><body><h1>Hello World</h1></body></html>');
      }
    );
 
    server.listen(1337,"localhost");
    trace( 'Server running at http://127.0.0.1:1337/' );
  }
}