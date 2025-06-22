'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/AssetManifest.bin": "99d083533f982f71e7c80c80abebcfbb",
"assets/fonts/MaterialIcons-Regular.otf": "19d7d70435f0509bc3d9deeccdd92975",
"assets/AssetManifest.json": "265c6bb12ffc17f2d2ceddda366015ad",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/icons/experiences.svg": "3e66e222e3af183c13200f8c9e265d4c",
"assets/assets/icons/linkedin.svg": "e18bfcc65e0f712b616e97b0734a4855",
"assets/assets/icons/github.svg": "8e7a40be4caed4cc35a879453c1ca8a5",
"assets/assets/icons/down_arrow.svg": "2fb2b9be53c7dbddfa1a7d89a53d0867",
"assets/assets/icons/up_arrow.svg": "4c5dc7ca8e28f37999433f32b13f2533",
"assets/assets/icons/mail.svg": "82a63ac7f548ce4ab3c23cdee622e985",
"assets/assets/icons/twitter.svg": "3a6935b000aab1388ea9a076604c7530",
"assets/assets/icons/home.svg": "9aa5deb83574ceeabf80ca20c8bf20c6",
"assets/assets/icons/about.svg": "de3e736336e10b23467a1295c32ca518",
"assets/assets/icons/skills_icons/blender.svg": "85fee1db0cfb4438919d226da5060359",
"assets/assets/icons/skills_icons/lightroom.svg": "11fc2a6c8fb06f925d7b00b0303d92b0",
"assets/assets/icons/skills_icons/java.svg": "0c23230472adf6ba65e6524a068a2889",
"assets/assets/icons/skills_icons/github.svg": "c7f4f8cd4e1d67c295179575eab41e59",
"assets/assets/icons/skills_icons/mongodb.svg": "ebfdfa1d1bb79b4d7e0ea603022abfab",
"assets/assets/icons/skills_icons/canva.svg": "b79103b2f10105fe2f09f30346a0b9dd",
"assets/assets/icons/skills_icons/pandas.svg": "feca049160d5b9b10dcf7d308aa983dc",
"assets/assets/icons/skills_icons/react-native.svg": "240fe085808afe1f6bd861e1c5041c3a",
"assets/assets/icons/skills_icons/firebase.svg": "7f1bf2795e067daf4ac3b42a2a140496",
"assets/assets/icons/skills_icons/nodejs.svg": "f4a010b8cbaa9799755beabc06b0f910",
"assets/assets/icons/skills_icons/dart.svg": "77736b70355db3b992d712891749acd5",
"assets/assets/icons/skills_icons/django.svg": "e6e3f5dc7c199f384e5814c97a683578",
"assets/assets/icons/skills_icons/adobe_xd.svg": "940cad71d6f2ee228975efa29e9eda77",
"assets/assets/icons/skills_icons/git.svg": "fee6952807afc03e375b8917c273c6ad",
"assets/assets/icons/skills_icons/mysql.svg": "99d08f9e2966e406024b603a51460338",
"assets/assets/icons/skills_icons/photoshop.svg": "52d9809c01882f8e6c9227cfb0d77b32",
"assets/assets/icons/skills_icons/Figma.svg": "e4d477f4b50ca750010cc10c5a5bbb53",
"assets/assets/icons/skills_icons/cpp.svg": "797c85b510ba6603dd20d35aed8d4089",
"assets/assets/icons/skills_icons/python.svg": "a1872cef0fb917ddf4d387e298d9f160",
"assets/assets/icons/skills_icons/numpy.svg": "d7a842a43d69c1559e9500b43fb3ab40",
"assets/assets/icons/skills_icons/davinci.svg": "d945aa8a1f6632d4d061c46ed538d923",
"assets/assets/icons/skills_icons/flutter.svg": "9a6e81be6ff5b09956f4f85fe1f0a89f",
"assets/assets/icons/behance.svg": "a0b7da6868ffd35691a2c9ca85912605",
"assets/assets/icons/resume.svg": "65bdfe4a7bfa05418cb8e7781e7b6aed",
"assets/assets/icons/artstation.svg": "363e24bed29d84b7daeab0574a670768",
"assets/assets/icons/projects.svg": "5758a560d57c8719d36d11fb3025ecdb",
"assets/assets/images/projects/ThreeD-3.jpg": "8c41a952fd4dd2b8e9b39b78fed4c9e7",
"assets/assets/images/projects/UX-1.png": "bb5eb55e847b7e2d9d4d5ba58839f3d9",
"assets/assets/images/projects/ThreeD-2.jpg": "585f2225d63ecd517781185a88d9257e",
"assets/assets/images/projects/UX-2.png": "6e3b0eb5b713016bf573b71b9ad5ad35",
"assets/assets/images/projects/UX-2.jpg": "35e2cd4392d7dfb08d16cb3ae7f3cbcf",
"assets/assets/images/projects/UX-1.jpg": "29499ede5d1c118ecf102070c4164c7b",
"assets/assets/images/projects/ThreeD-1.jpg": "22d9c15d25dec1cac5b63669925cb059",
"assets/assets/images/projects/UX-3.png": "f78fd6dc3b7164516cec59d07a95c4c0",
"assets/assets/images/projects/UX-3.jpeg": "3223679a4d5f699f680be6a08da00f2f",
"assets/assets/images/projects/ThreeD-4.jpg": "646275bbd5e13a0b6a4ecf6f239e3f62",
"assets/assets/images/projects/ThreeD-5.jpg": "47a5f255f7386320378b3644b64231db",
"assets/assets/images/certificate_b.png": "551630c26169adad5803629fe8f4b148",
"assets/assets/images/certficate_icons/udemy.png": "c6d241a824e417c2e195bb2eba0671cb",
"assets/assets/images/certficate_icons/nptel.png": "a071bdb8bc7fa68f901f9768ff149696",
"assets/assets/images/certficate_icons/dbms.png": "ea40e323488f692b70bc8b6963654cfb",
"assets/assets/images/certficate_icons/ml.png": "81be140f4c8b6f6655c78baaaf3bd821",
"assets/assets/images/certficate_icons/python.png": "02fcfda12a1a76a15bb0940993edef29",
"assets/assets/images/certficate_icons/mysql.png": "a97fd6c8e066250131fab03239865a63",
"assets/assets/images/certficate_icons/hackerrank.png": "15d483d0097a1fec89e2bc2e7a866066",
"assets/assets/images/certficate_icons/coincent.png": "f97a1835abf9695639cef76264825eec",
"assets/assets/images/certficate_icons/java.png": "ee486b5ef2a5123cec87654ab1cfdc00",
"assets/assets/memoji.png": "e7d8e7e682f0ca3da98995f4e411f743",
"assets/assets/env.txt": "e548f942bd80db4b4c5600c40d94d46b",
"assets/NOTICES": "2747b5b7adbaa2404e43ea809c47891e",
"assets/AssetManifest.bin.json": "6d111b15efce655caa423bf01ae116b3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"index.html": "c1c5f29031926111ab3ccb7c551c88f9",
"/": "c1c5f29031926111ab3ccb7c551c88f9",
"version.json": "009c9e65172e010890f7f65fde438006",
"flutter_bootstrap.js": "6a7127b7ddc76b542412412b40aa4f69",
"main.dart.js": "04b2a553dd636d478e40da30f43add8b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
