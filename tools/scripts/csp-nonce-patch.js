(function(){

  const nonce = window.__cspNonce;

  if (!nonce) return;

  const appendChild = Element.prototype.appendChild;

  Element.prototype.appendChild = function(node){

    if(
      node instanceof HTMLScriptElement ||
      node instanceof HTMLStyleElement
    ){
      node.setAttribute("nonce", nonce);
    }

    return appendChild.call(this, node);

  };

})();