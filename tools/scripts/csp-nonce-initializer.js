export function initCspNonce() {

  return () => {

    const meta = document.querySelector(
      'meta[property="csp-nonce"]'
    );

    const nonce = meta?.getAttribute("content");

    if (nonce) {
      window.__cspNonce = nonce;
    }

  };

}