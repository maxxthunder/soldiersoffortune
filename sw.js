// Offline copy of the generator: always try the network first so updates show up, fall back to the last copy.
const CACHE = "sof";
self.addEventListener("install", e => { self.skipWaiting(); e.waitUntil(caches.open(CACHE).then(c => c.add("./"))); });
self.addEventListener("activate", e => e.waitUntil(clients.claim()));
self.addEventListener("fetch", e => {
  const url = new URL(e.request.url);
  if (e.request.method !== "GET" || !(url.origin === location.origin || /^fonts\.g/.test(url.host))) return;
  e.respondWith(fetch(e.request).then(r => {
    const copy = r.clone();
    caches.open(CACHE).then(c => c.put(e.request.mode === "navigate" ? "./" : e.request, copy));
    return r;
  }).catch(() => caches.match(e.request.mode === "navigate" ? "./" : e.request)));
});
