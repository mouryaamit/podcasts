// tools/scripts/csp-nonce-initializer.js
function patchNonceForDynamicElements(nonce) {
  const targets = [document.head, document.body];

  targets.forEach((target) => {
    const originalAppendChild = target.appendChild;
    target.appendChild = function (node) {
      if (
        (node instanceof HTMLStyleElement ||
          node instanceof HTMLScriptElement) &&
        nonce
      ) {
        node.setAttribute("nonce", nonce);
      }
      return originalAppendChild.call(this, node);
    };
  });

  document.styleNonce = nonce;
}

module.exports.initCspNonce = () => {
  return () => {
    const nonce = globalThis.__cspNonce || "";
    if (nonce) patchNonceForDynamicElements(nonce);
  };
};
