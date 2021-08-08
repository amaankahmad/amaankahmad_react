'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "1c9fd7f667f0acc698c51d2e29e08cd7",
"index.html": "3012fa75de4a06a629400f82162f64dd",
"/": "3012fa75de4a06a629400f82162f64dd",
"main.dart.js": "ab4afa54849383ec8347bc1cefd61293",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Amaan%20Ahmad.jpg": "58c7ff9d8fac20f6e1571b4ad8fb247a",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "c2d5e2104e6b7b09daf9dc1abe04c1e3",
"assets/AssetManifest.json": "e1e1d01cc3983e0a8f88758aa24ec586",
"assets/NOTICES": "fdfc2b5cdf7aa065037c3a4d6325ff94",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/assets/images/stpauls/SPS_logo_transparent.png": "693b22bc9f9f794aa90e971e2beb2bdb",
"assets/assets/images/5G/telecommunications.jpeg": "31d3c180403884047bafe4672d6ea61d",
"assets/assets/images/5G/logo.png": "839e88bbeefa4cac2a8a2f4b9c7d131a",
"assets/assets/images/5G/robotic_surgery.jpeg": "7a05a3ab99ca4e1bdc2ca2566b852318",
"assets/assets/images/kalliston/app.png": "5fe0f6ec4508b18d08dde1daf074c76d",
"assets/assets/images/kalliston/logo.jpeg": "f82814a0ff2930c168d0735416369127",
"assets/assets/images/kalliston/logo.svg": "29deed72ac8c8cbd7acbcbe7aed99691",
"assets/assets/images/wharton/logo.png": "ee4e9eb9359b3baaf4bbff2ecda797f1",
"assets/assets/images/ichealthhack/logo.png": "bc7e3abfbfbae71b8d6170d57dd4be7c",
"assets/assets/images/ichealthhack/wearable.JPG": "03ad75b29c55bde7078f20f1a88b1eea",
"assets/assets/images/SEC/logo.jpeg": "30f3f30551d96b35ece02c2ad50fc784",
"assets/assets/images/pathfinder/stock.jpeg": "fd0d911a2178f6b4bdda3a53c4f62937",
"assets/assets/images/pathfinder/react.png": "666f340c810e8f8a0964be7386ad74b1",
"assets/assets/images/equinox/website.png": "4ac7cad9915a88c7aefc10dfe52e864f",
"assets/assets/images/equinox/square%2520logo.jpeg": "3378565bcfeb17004f5ba05a16dc0987",
"assets/assets/images/equinox/logo.png": "001fd3c55cd6ba0164774379175678b3",
"assets/assets/images/googleML/developers.png": "7955accda032963c15b29322bd2fb3d8",
"assets/assets/images/googleML/logo.png": "aaca3ef08d6aa8608d2c0e57fe770f0e",
"assets/assets/images/googleML/googleAI.png": "af9e57e1bd50604eb8938152a2cdcc4c",
"assets/assets/images/raf/Chief.jpg": "ba51a416173aead7b2f241bb54160822",
"assets/assets/images/raf/logo.jpeg": "ad18ae5c2e92ad30d15c831db0e3ca0e",
"assets/assets/images/raf/aero.jpg": "dfbdbcc5a71419957be9a8e1880fffc8",
"assets/assets/images/iet/logo.jpeg": "f3fa5c7e5dc3e719e61b5431c8fc6251",
"assets/assets/images/f24/logo.png": "67269fe036f023116ff3781b8336ff3c",
"assets/assets/images/f24/car.jpg": "4e35b13234ee5a24a806d437a400be7d",
"assets/assets/images/bankingGUI/functions.png": "66d8385679ce7a26e18b98d0b30c0798",
"assets/assets/images/bankingGUI/login.png": "3d29acac1eea741908f7ba0b73022cae",
"assets/assets/images/southwark/logo.png": "b2d7cfec866fd90c495d224c965cb35e",
"assets/assets/images/raeng/logo.jpeg": "e1d45efbf937bb15ab3bf1e91e7860db",
"assets/assets/images/ocado/ocado-logo.png": "e1642196d369115e9309a402bbf21d91",
"assets/assets/images/ocado/ocado-arm.jpg": "cd1aac15f9b67b73bca8428af07ffd2b",
"assets/assets/images/me/me.jpg": "c4d548e6e9826ca6dbe7adfaff19f9f6",
"assets/assets/images/me/Amaan%2520Ahmad.jpg": "7ed8904d3a25df3324c992989bdad818",
"assets/assets/images/melomotion/app.png": "5480a074461245c0b168cb5da3445f0e",
"assets/assets/images/melomotion/logo.png": "ec1e7ae0819ee96cf8ee048d8f53af93",
"assets/assets/images/jpmorgan/forage.jpeg": "f5c8211b0e5b1f9ab6d7efbcf59a7b5b",
"assets/assets/images/jpmorgan/logo.jpeg": "bf45c23ced8cae64e18a65ab01b5f019",
"assets/assets/images/citadel/day.png": "bea46bf59379ce4d748af73c8694b3e6",
"assets/assets/images/citadel/logos.jpeg": "be6ac8bed993084c8c3bf33416ef0642",
"assets/assets/images/citadel/day.jpeg": "dfafb20f63c2d90411692d333c4236ce",
"assets/assets/images/goldman/program.jpeg": "30ed19b946dd65783c66c9931aa3e735",
"assets/assets/images/goldman/logo.png": "a33c5b1e168b263d53579a15a758c44f",
"assets/assets/images/snooker/reshaped%2520tracking.png": "4e0ec95b5b07aee0ebc4d31bf65df977",
"assets/assets/images/snooker/tracking.JPG": "f42ade0a6d88f8fbdaa6f5a980f374d9",
"assets/assets/images/snooker/detection.jpg": "c3ba675cdd9ab7567b0bc6a5e1bb6932",
"assets/assets/images/imperial/Imperial.jpeg": "f554d7ae0d82319fa5e2c5d1d76beca6",
"assets/assets/images/imperial/Imperial%2520College%2520London%2520Logo.png": "eeda68a1aeba768ba2e5f9c7ffb48324",
"assets/assets/images/mit/logo.jpeg": "f67467b256ca61125e3c02d4bc926a6e",
"assets/assets/images/harvard/cs50.png": "78e6688a5bfee5385d9796008cd99aff",
"assets/assets/images/harvard/logo.jpeg": "f3b14bb6c2dde86a5c799ca611348080",
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
