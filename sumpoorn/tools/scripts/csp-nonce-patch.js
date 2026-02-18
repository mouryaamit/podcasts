// tools/scripts/csp-nonce-patch.js

(function patchCSPNonce() {
  const nonce = window.__cspNonce;
  if (!nonce) return;

  // ---------- Helpers ----------
  function needsNonce(node) {
    return (
      (node instanceof HTMLScriptElement ||
        node instanceof HTMLStyleElement) &&
      !node.getAttribute('nonce')
    );
  }

  // ---------- Patch appendChild ----------
  const origAppend = Element.prototype.appendChild;
  Element.prototype.appendChild = function (node) {
    if (needsNonce(node)) {
      node.setAttribute('nonce', nonce);
    }
    return origAppend.call(this, node);
  };

  // ---------- Patch insertBefore ----------
  const origInsertBefore = Element.prototype.insertBefore;
  Element.prototype.insertBefore = function (newNode, refNode) {
    if (needsNonce(newNode)) {
      newNode.setAttribute('nonce', nonce);
    }
    return origInsertBefore.call(this, newNode, refNode);
  };

  // ---------- Patch createElement ----------
  const origCreateElement = Document.prototype.createElement;
  Document.prototype.createElement = function (tag) {
    const el = origCreateElement.call(this, tag);
    if ((tag === 'script' || tag === 'style') && nonce) {
      el.setAttribute('nonce', nonce);
    }
    return el;
  };

  // ---------- 🔥 Patch inline styles (CRITICAL) ----------
  const origSetAttribute = Element.prototype.setAttribute;
  Element.prototype.setAttribute = function (name, value) {
    if (
      name === 'style' &&
      this instanceof HTMLElement &&
      !this.getAttribute('nonce')
    ) {
      this.setAttribute('nonce', nonce);
    }
    return origSetAttribute.call(this, name, value);
  };

})();
