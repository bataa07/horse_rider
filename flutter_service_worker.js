'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/assets/tiles/TX%2520Tileset%2520Ground.tsx": "3f16b06b933559d5ffb5e3c5c6970a6a",
"assets/assets/tiles/TX%2520Village%2520Props.tsx": "77e38e3a638796773d3aaef7680e42f1",
"assets/assets/tiles/TX%2520Chest%2520Animation.tsx": "9b136649a2c5bd334bd3d0a4b38d0c82",
"assets/assets/tiles/map1.tmx": "047873f76288e0b44baccd273bd25a94",
"assets/assets/images/leash/leash_raise.png": "82787fffdce1ad8d2d20003ca63cc26b",
"assets/assets/images/leash/leash_mount_off.png": "d4e0899c0b033bef2426dc13aa17b750",
"assets/assets/images/leash/leash_stop.png": "ea0134243bbfeef1d0dd78e244975a2c",
"assets/assets/images/leash/leash_Idle_reverse.png": "a7ed06db6eaedf4fd9f12b7b1f248e5c",
"assets/assets/images/leash/leash_mount_on.png": "e7561e9fb4a2fce79312ec0a03901ec5",
"assets/assets/images/leash/leash_Base.png": "f7f52fc5d3a250e29e5cf7de6b57b1b3",
"assets/assets/images/leash/leash_run_reverse.png": "303d5e5d52fa2d6368383f241e81b7bc",
"assets/assets/images/leash/leash_Idle.png": "4aebc205a5043ca9931e7f9cf613a058",
"assets/assets/images/leash/leash_run.png": "d49b97c615d261212e262a9c92427b41",
"assets/assets/images/glacial_mountains/clouds_bg.png": "24dd97f546a36e457d5535c57ad8da83",
"assets/assets/images/glacial_mountains/cloud_lonely.png": "3a49f850689d1d6a6e3bbf1a09fa3b4c",
"assets/assets/images/glacial_mountains/sky_lightened.png": "feabf77e3eb8084fc3fd9caa66000990",
"assets/assets/images/glacial_mountains/clouds_mg_1_lightened.png": "28b193b5d846f29866c099afb457c6ed",
"assets/assets/images/glacial_mountains/glacial_mountains.png": "8f602b921060c67fc1d17e671d5f9622",
"assets/assets/images/glacial_mountains/clouds_mg_1.png": "ed1d3ee6b957bf87ada1101f5487e0ec",
"assets/assets/images/glacial_mountains/clouds_mg_2.png": "bee88a88758e26f6df9adae266221f90",
"assets/assets/images/glacial_mountains/sky.png": "71054765307b0a4343dcde77698e9f56",
"assets/assets/images/glacial_mountains/glacial_mountains_lightened.png": "0876eaa81562855e2a820c55172d9f8d",
"assets/assets/images/glacial_mountains/clouds_mg_3.png": "20c973897647b0f82487b58807d22834",
"assets/assets/images/tileset/TX%2520Chest%2520Animation.png": "2a27d4f5837742bfe0f226505fe39341",
"assets/assets/images/tileset/TX%2520Tileset%2520Ground.png": "a734382d372b7a8c197b97eaf4570323",
"assets/assets/images/tileset/TX%2520Village%2520Props.png": "354114b76167b7d3763820fae2f41f1d",
"assets/assets/images/black_horse/horse_run.png": "cfd3cb528e472123509f83d3e1a5ef24",
"assets/assets/images/black_horse/horse_mount_on.png": "e8f4f463a4b8334247ada2fee977d6f8",
"assets/assets/images/black_horse/horse_raise.png": "1254e102019abe655e51f1d67d81453b",
"assets/assets/images/black_horse/horse_stop.png": "5d44a7ba1127109ac93a6e45da989fbd",
"assets/assets/images/black_horse/horse_idle.png": "acaaa5b0036f0c7d25a585f70fb07593",
"assets/assets/images/black_horse/horse_run_reverse.png": "a0a452f478a3c37b4307e03300a74f20",
"assets/assets/images/black_horse/horse_idle_reverse.png": "abd984f4e3cb8e88c78c56b3cb2e3394",
"assets/assets/images/black_horse/horse_mount_off.png": "06520c36fb7d8fe3ae25faf8249691d3",
"assets/assets/images/black_horse/horse_base.png": "d91076c28b26b160af2eef0fad8837b9",
"assets/assets/images/rider/rider_mount_on.png": "6dc9ecd887dcc9e4283cbaaeeebf6b67",
"assets/assets/images/rider/rider_mount_off.png": "8c747778de695fb4bac833428031b45a",
"assets/assets/images/rider/rider_base.png": "a9c5bcb2cbcd6df42134d87f44a5cf83",
"assets/assets/images/rider/rider_mount_stop.png": "ee146349265671e37c2422549e4e5a89",
"assets/assets/images/rider/rider_mount_raise.png": "72342243d91a23e6925b88643e14e254",
"assets/assets/images/rider/rider_mount_idle.png": "23a44ca338162b6b8dbd655277a77ce6",
"assets/assets/images/rider/rider_mount_run_reverse.png": "3fae906e00707fa3cae927e8a46d8477",
"assets/assets/images/rider/rider_mount_idle_reverse.png": "240a96e0ebfbca3e95804aa225aa7c9a",
"assets/assets/images/rider/rider_mount_run.png": "bd503de99081832537a7ac66ffef7984",
"assets/assets/images/background/sky_fc.png": "8351d270249b267eddbf7f44a7f1c094",
"assets/assets/images/background/clouds_front_t_fc.png": "c992f36c43f6b1f576b9891baeeab024",
"assets/assets/images/background/hill.png": "a15c266e2acd55e69a7dfb4326907c4f",
"assets/assets/images/background/clouds_front_fc.png": "d2a9fd43305d725d925fd5c23c24fdc4",
"assets/assets/images/background/grassy_mountains_fc.png": "a31f30aca006051f3ddfde1e884dde7c",
"assets/assets/images/background/clouds_mid_t_fc.png": "a1c6193899dde3459d3e7c32937d36cc",
"assets/assets/images/background/clouds_mid_fc.png": "adcec6eb9ac1bd8ef4a376453191446b",
"assets/assets/images/background/far_mountains_fc.png": "f17c2b8fa931960ead23c587e72e6b57",
"assets/shaders/ink_sparkle.frag": "237ceacd6c04871e538aaa934b1327a3",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/NOTICES": "3f9abdfbb722870b71e389bc946772c4",
"assets/AssetManifest.json": "935794ee3dec510da58ed641f284bcf0",
"manifest.json": "dce7111ca6c37242b0709ebd26dc1b6a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "a89033735df34556f7d75be280c798cf",
"index.html": "ff1280b5631b791a472db7a4e2aa5cb5",
"/": "ff1280b5631b791a472db7a4e2aa5cb5",
"main.dart.js": "a6e3d3b8d7eb241add4c3d6ca9a40e30",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
