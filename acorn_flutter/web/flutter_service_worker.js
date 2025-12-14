// 「自分で自分を消す」専用 ServiceWorker

self.addEventListener('install', (event) => {
  // すぐにアクティブ化
  self.skipWaiting();
});

self.addEventListener('activate', (event) => {
  event.waitUntil((async () => {
    try {
      // 1. 自分自身を unregister
      await self.registration.unregister();

      // 2. このスコープのキャッシュを全部消す
      const keys = await caches.keys();
      await Promise.all(keys.map((key) => caches.delete(key)));
    } catch (e) {
      // 失敗しても致命的ではないので握りつぶす
      console.error('ServiceWorker cleanup failed', e);
    }
  })());
});

// 念のため、全リクエストはネットワークに素通し
self.addEventListener('fetch', (event) => {
  return;
});