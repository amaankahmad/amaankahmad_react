'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "1c9fd7f667f0acc698c51d2e29e08cd7",
"index.html": "d7a6e2050c2606ae47f3377ce4bb35fe",
"/": "d7a6e2050c2606ae47f3377ce4bb35fe",
"main.dart.js": "8f09428f23c455bcdb8696f2f9cd745b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "c2d5e2104e6b7b09daf9dc1abe04c1e3",
"assets/AssetManifest.json": "5e6f069992a987d8acff65e25d6b9af0",
"assets/NOTICES": "fdfc2b5cdf7aa065037c3a4d6325ff94",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/images/stpauls/SPS_logo_transparent.png": "b42817e1256a39f1f82fecfc75614ab8",
"assets/assets/images/5G/telecommunications.jpeg": "31d3c180403884047bafe4672d6ea61d",
"assets/assets/images/5G/logo.png": "e6f663dbfaa9acea8fcab07ef214981b",
"assets/assets/images/5G/robotic_surgery.jpeg": "f8bc827bb49c5e2418f65578417d4b56",
"assets/assets/images/kalliston/app.png": "f52e11983f55c14527802c1d70db5f9c",
"assets/assets/images/kalliston/logo.jpeg": "6a2aa641e7a2b168dcd2dd11c8d3140d",
"assets/assets/images/kalliston/logo.svg": "29deed72ac8c8cbd7acbcbe7aed99691",
"assets/assets/images/wharton/logo.png": "231d0a2ece145630baf63ac8f63d9f25",
"assets/assets/images/ichealthhack/logo.png": "f8837f07afcb3567dd4b7970315befca",
"assets/assets/images/ichealthhack/wearable.JPG": "a855d8729ef2578dd2ff1dbdde1d035d",
"assets/assets/images/SEC/logo.jpeg": "9006616dc379d85b20ba36fa1e4acb2b",
"assets/assets/images/pathfinder/stock.jpeg": "45e5b787fafe77d281d2ab2f31eabcf7",
"assets/assets/images/pathfinder/react.png": "2948eba341be8a07fa3f796f95c0eb4d",
"assets/assets/images/equinox/website.png": "f10a1e20a250bc868f06fdd3965597a2",
"assets/assets/images/equinox/square%2520logo.jpeg": "ecfcef1357d66335ba15832735beee4b",
"assets/assets/images/equinox/logo.png": "001fd3c55cd6ba0164774379175678b3",
"assets/assets/images/googleML/developers.png": "7955accda032963c15b29322bd2fb3d8",
"assets/assets/images/googleML/logo.png": "aaca3ef08d6aa8608d2c0e57fe770f0e",
"assets/assets/images/googleML/googleAI.png": "fbc6dd92a8903039c6d1223bd49971b7",
"assets/assets/images/raf/Chief.jpg": "f5b8fd43a58a5beff6e86cadc49f3e86",
"assets/assets/images/raf/logo.jpeg": "0bd046e98bda5d0fc3235461e17a6964",
"assets/assets/images/raf/aero.jpg": "dfbdbcc5a71419957be9a8e1880fffc8",
"assets/assets/images/iet/logo.jpeg": "c0e6c1166e4192a2830022c124f7abcb",
"assets/assets/images/f24/logo.png": "18630ede427ba2e568611a549bbbdbf2",
"assets/assets/images/f24/car.jpg": "f93a1b4e2765a5756b7f050d2d70f094",
"assets/assets/images/bankingGUI/functions.png": "94564b9f33480a1b1ab3e20ff626cff1",
"assets/assets/images/bankingGUI/login.png": "8becf49986cfe2dd6385870ca2e38360",
"assets/assets/images/southwark/logo.png": "4de1f25ece5f60fc948321e66e040f0a",
"assets/assets/images/raeng/logo.jpeg": "ab4079a5e07b60c9519df79603e11714",
"assets/assets/images/ocado/ocado-logo.png": "66a35c4e6b36391f245330203d8cdba1",
"assets/assets/images/ocado/ocado-arm.jpg": "cc67fc853e5e3423f49da9f1fdd6fd7d",
"assets/assets/images/me/me.jpg": "c4d548e6e9826ca6dbe7adfaff19f9f6",
"assets/assets/images/me/Amaan%2520Ahmad.jpg": "58c7ff9d8fac20f6e1571b4ad8fb247a",
"assets/assets/images/melomotion/app.png": "c3bdf31f404df25960a2c31a6694593a",
"assets/assets/images/melomotion/logo.png": "57c4cbd1bc5f0fad8884587b0e25caf1",
"assets/assets/images/jpmorgan/forage.jpeg": "f5c8211b0e5b1f9ab6d7efbcf59a7b5b",
"assets/assets/images/jpmorgan/logo.jpeg": "5bf161db62fae058517f06061efecd70",
"assets/assets/images/citadel/day.png": "a828e0f7a26f21fd552708ffed169538",
"assets/assets/images/citadel/logos.jpeg": "c06fc095780bda171ca8561b5e529da9",
"assets/assets/images/citadel/day.jpeg": "dfafb20f63c2d90411692d333c4236ce",
"assets/assets/images/goldman/program.jpeg": "30ed19b946dd65783c66c9931aa3e735",
"assets/assets/images/goldman/logo.png": "183686fdc323f8de41289ee8f3865b7a",
"assets/assets/images/snooker/reshaped%2520tracking.png": "8897f38df946963c88463f20b193ea5f",
"assets/assets/images/snooker/tracking.JPG": "f42ade0a6d88f8fbdaa6f5a980f374d9",
"assets/assets/images/snooker/detection.jpg": "0ecafa498612cb5cb7edd28d23ec05db",
"assets/assets/images/imperial/Imperial.jpeg": "72efda748b2ffc862bc3712066bbdfbd",
"assets/assets/images/imperial/Imperial%2520College%2520London%2520Logo.png": "74767580f83d56c13669ccbebb8dfb2a",
"assets/assets/images/mit/logo.jpeg": "d8b16602199551f9939bbe2224c30ff4",
"assets/assets/images/harvard/cs50.png": "78e6688a5bfee5385d9796008cd99aff",
"assets/assets/images/harvard/logo.jpeg": "8f252927a4d76d8dea58b276add195bf",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
