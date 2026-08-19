package com.sigmob.sdk.base.common;

import android.os.AsyncTask;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.models.AdCache;
import com.czhj.sdk.common.utils.FileUtil;
import com.czhj.sdk.common.utils.ImageManager;
import com.czhj.sdk.common.utils.Md5Util;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.VolleyError;
import com.czhj.volley.toolbox.DownloadItem;
import com.czhj.volley.toolbox.FileDownloadRequest;
import com.czhj.volley.toolbox.FileDownloader;
import com.kwad.sdk.core.response.model.SdkConfigData;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.AdPrivacy;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;
import com.sigmob.sdk.base.models.rtb.ResponseAsset;
import com.sigmob.sdk.base.models.rtb.ResponseAssetVideo;
import com.sigmob.sdk.base.models.rtb.Template;
import com.sigmob.sdk.videocache.HttpProxyCacheServer;
import com.sigmob.windad.WindAdError;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.fourthline.cling.model.ServiceReference;

/* renamed from: com.sigmob.sdk.base.common.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1258h {

    /* renamed from: a, reason: collision with root package name */
    public static final String f35878a = "h";

    /* renamed from: i, reason: collision with root package name */
    private static HttpProxyCacheServer f35885i;

    /* renamed from: k, reason: collision with root package name */
    private static volatile ImageManager f35887k;

    /* renamed from: l, reason: collision with root package name */
    private static BaseAdUnit f35888l;

    /* renamed from: m, reason: collision with root package name */
    private static BaseAdUnit f35889m;

    /* renamed from: o, reason: collision with root package name */
    private static ab f35891o;

    /* renamed from: v, reason: collision with root package name */
    private String f35899v;

    /* renamed from: w, reason: collision with root package name */
    private String f35900w;

    /* renamed from: c, reason: collision with root package name */
    private static final Integer f35879c = 0;

    /* renamed from: d, reason: collision with root package name */
    private static final Integer f35880d = 1;

    /* renamed from: e, reason: collision with root package name */
    private static final Integer f35881e = 2;

    /* renamed from: f, reason: collision with root package name */
    private static final Integer f35882f = 3;

    /* renamed from: g, reason: collision with root package name */
    private static C1258h f35883g = null;

    /* renamed from: h, reason: collision with root package name */
    private static final Map<String, BaseAdUnit> f35884h = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, Integer> f35886j = new HashMap<>();

    /* renamed from: n, reason: collision with root package name */
    private static final HashMap<String, List<BaseAdUnit>> f35890n = new HashMap<>();

    /* renamed from: q, reason: collision with root package name */
    private static final HashMap<String, BidResponse> f35892q = new HashMap<>();

    /* renamed from: s, reason: collision with root package name */
    private static final HashMap<String, Integer> f35893s = new HashMap<>();

    /* renamed from: A, reason: collision with root package name */
    private static final Map<String, List<BaseAdUnit>> f35877A = new HashMap();

    /* renamed from: p, reason: collision with root package name */
    private final Map<String, String> f35895p = new HashMap();

    /* renamed from: r, reason: collision with root package name */
    private final HashSet<a> f35896r = new HashSet<>();

    /* renamed from: b, reason: collision with root package name */
    final FileDownloadRequest.FileDownloadListener f35894b = new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.1
        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void downloadProgress(DownloadItem downloadItem, long j2, long j3) {
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onCancel(DownloadItem downloadItem) {
            C1258h.f35886j.put(Md5Util.md5(downloadItem.url), C1258h.f35882f);
            Iterator it = C1258h.this.f35896r.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && downloadItem.type == DownloadItem.FileType.FILE && baseAdUnitA.getEndCardZipPath().equals(downloadItem.filePath)) {
                    aVar.b(baseAdUnitA);
                }
            }
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onErrorResponse(DownloadItem downloadItem) {
            SigmobLog.e("onErrorResponse: ", downloadItem.error);
            C1258h.f35886j.put(Md5Util.md5(downloadItem.url), C1258h.f35882f);
            Iterator it = C1258h.this.f35896r.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && baseAdUnitA.getEndCardZipPath().equals(downloadItem.filePath) && downloadItem.type == DownloadItem.FileType.FILE) {
                    aVar.b(baseAdUnitA);
                }
            }
            C1258h.this.new c(downloadItem).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        }

        @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
        public void onSuccess(DownloadItem downloadItem) {
            C1258h.f35886j.put(Md5Util.md5(downloadItem.url), C1258h.f35882f);
            Iterator it = C1258h.this.f35896r.iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                BaseAdUnit baseAdUnitA = aVar.a();
                if (baseAdUnitA != null && downloadItem.type == DownloadItem.FileType.FILE && baseAdUnitA.getEndCardZipPath().equals(downloadItem.filePath)) {
                    aVar.a(baseAdUnitA);
                }
            }
            C1258h.this.new c(downloadItem).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        }
    };

    /* renamed from: t, reason: collision with root package name */
    private final ArrayList<BaseAdUnit> f35897t = new ArrayList<>();

    /* renamed from: u, reason: collision with root package name */
    private final HashMap<String, AdCache> f35898u = new HashMap<>();

    /* renamed from: x, reason: collision with root package name */
    private final HashMap<String, b> f35901x = new HashMap<>();

    /* renamed from: y, reason: collision with root package name */
    private final HashMap<String, AdCache> f35902y = new HashMap<>();

    /* renamed from: z, reason: collision with root package name */
    private final Map<String, AdCache> f35903z = new HashMap();

    /* renamed from: com.sigmob.sdk.base.common.h$a */
    public interface a {
        BaseAdUnit a();

        void a(BaseAdUnit baseAdUnit);

        void b(BaseAdUnit baseAdUnit);
    }

    /* renamed from: com.sigmob.sdk.base.common.h$b */
    public interface b {
        void a(BaseAdUnit baseAdUnit);

        void a(BaseAdUnit baseAdUnit, String str);
    }

    /* renamed from: com.sigmob.sdk.base.common.h$c */
    public class c extends AsyncTask<Object, Void, String> {

        /* renamed from: b, reason: collision with root package name */
        private final DownloadItem f35913b;

        public c(DownloadItem downloadItem) {
            this.f35913b = downloadItem;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(Object... objArr) {
            WindAdError windAdError;
            String message;
            DownloadItem downloadItem = this.f35913b;
            if (downloadItem != null) {
                VolleyError volleyError = downloadItem.error;
                if (volleyError != null) {
                    return volleyError.toString();
                }
                String str = downloadItem.filePath;
                String extensionName = FileUtil.getExtensionName(str);
                String strFileMd5 = Md5Util.fileMd5(str);
                if (!com.sigmob.sdk.base.utils.s.b(this.f35913b.md5) || this.f35913b.md5.equalsIgnoreCase(strFileMd5)) {
                    if (this.f35913b.type == DownloadItem.FileType.VIDEO) {
                        C1258h.this.f35895p.put(str, strFileMd5);
                        this.f35913b.status = 1;
                    } else if (com.sigmob.sdk.base.utils.s.b(extensionName) && extensionName.equalsIgnoreCase("tgz")) {
                        try {
                            com.sigmob.sdk.base.utils.g.a(new File(str), new File(str.replace(".tgz", ServiceReference.DELIMITER)));
                            this.f35913b.status = 1;
                        } catch (Throwable th) {
                            this.f35913b.status = 0;
                            message = th.getMessage();
                        }
                    } else {
                        DownloadItem downloadItem2 = this.f35913b;
                        if (downloadItem2.type == DownloadItem.FileType.MRAID_VIDEO) {
                            return null;
                        }
                        downloadItem2.status = 0;
                        windAdError = WindAdError.ERROR_SIGMOB_INFORMATION_LOSE;
                    }
                    return null;
                }
                this.f35913b.status = 0;
                windAdError = WindAdError.ERROR_SIGMOB_FILE_MD5;
                return windAdError.toString();
            }
            message = "doInBackground: item is null.";
            SigmobLog.e(message);
            windAdError = WindAdError.ERROR_SIGMOB_FILE_DOWNLOAD;
            return windAdError.toString();
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            DownloadItem downloadItem;
            DownloadItem.FileType fileType;
            super.onPostExecute(str);
            if (com.sigmob.sdk.base.utils.s.b(str)) {
                FileUtil.deleteFile(this.f35913b.filePath);
            }
            Iterator it = new CopyOnWriteArrayList(C1258h.this.f35897t).iterator();
            while (it.hasNext()) {
                BaseAdUnit baseAdUnit = (BaseAdUnit) it.next();
                b bVar = (b) C1258h.this.f35901x.get(baseAdUnit.getUuid());
                if (this.f35913b.type == DownloadItem.FileType.VIDEO && baseAdUnit.getVideoPath().equals(this.f35913b.filePath)) {
                    downloadItem = this.f35913b;
                } else if ((this.f35913b.type == DownloadItem.FileType.FILE && baseAdUnit.getEndCardZipPath().equals(this.f35913b.filePath)) || (fileType = (downloadItem = this.f35913b).type) == DownloadItem.FileType.ZIP_FILE) {
                    C1258h.this.a(baseAdUnit, str, bVar);
                } else if (fileType == DownloadItem.FileType.MRAID_VIDEO) {
                }
                ad.a(downloadItem, baseAdUnit, str, false);
                C1258h.this.a(baseAdUnit, str, bVar);
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.common.h$d */
    public class d extends AsyncTask<Object, Void, ArrayList<DownloadItem>> {

        /* renamed from: a, reason: collision with root package name */
        BaseAdUnit f35914a;

        public d(BaseAdUnit baseAdUnit) {
            this.f35914a = baseAdUnit;
        }

        private DownloadItem a(Template template) {
            if (!com.sigmob.sdk.base.utils.s.b(template.context.utf8())) {
                return null;
            }
            String strMd5 = Md5Util.md5(template.context.utf8());
            File file = new File(com.sigmob.sdk.base.utils.n.f(com.sigmob.sdk.base.utils.n.f36611c), strMd5 + ".tgz");
            if (file.exists()) {
                return null;
            }
            DownloadItem downloadItem = new DownloadItem();
            downloadItem.url = template.context.utf8();
            downloadItem.filePath = file.getAbsolutePath();
            downloadItem.type = DownloadItem.FileType.ZIP_FILE;
            return downloadItem;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<DownloadItem> doInBackground(Object... objArr) {
            ResponseAssetVideo responseAssetVideo;
            DownloadItem downloadItemA;
            DownloadItem downloadItemA2;
            DownloadItem downloadItemA3;
            String strFileMd5;
            ArrayList<DownloadItem> arrayList = new ArrayList<>();
            BaseAdUnit baseAdUnit = this.f35914a;
            if (baseAdUnit != null && baseAdUnit.getMaterial() != null) {
                try {
                    MaterialMeta material = this.f35914a.getMaterial();
                    if (com.sigmob.sdk.base.utils.s.b(this.f35914a.getVideo_url())) {
                        long length = 0;
                        if (this.f35914a.isVideoExist()) {
                            strFileMd5 = Md5Util.fileMd5(this.f35914a.getVideoPath());
                            if (!com.sigmob.sdk.base.utils.s.b(this.f35914a.getVideo_OriginMD5()) || this.f35914a.getVideo_OriginMD5().equalsIgnoreCase(strFileMd5)) {
                                C1258h.this.f35895p.put(this.f35914a.getVideoPath(), strFileMd5);
                                length = new File(this.f35914a.getVideoPath()).length();
                            } else {
                                FileUtil.deleteFile(this.f35914a.getVideoPath());
                            }
                        } else {
                            strFileMd5 = null;
                        }
                        boolean zCheckVideoValid = this.f35914a.checkVideoValid();
                        DownloadItem downloadItem = new DownloadItem();
                        if (zCheckVideoValid && this.f35914a.isVideoExist()) {
                            downloadItem.url = this.f35914a.getVideo_url();
                            downloadItem.filePath = this.f35914a.getVideoPath();
                            downloadItem.type = DownloadItem.FileType.VIDEO;
                            downloadItem.md5 = strFileMd5;
                            downloadItem.size = length;
                            downloadItem.status = 1;
                            ad.a(downloadItem, this.f35914a, (String) null, true);
                        } else if (this.f35914a.getPlayMode() != 2) {
                            downloadItem.url = this.f35914a.getVideo_url();
                            downloadItem.filePath = this.f35914a.getVideoPath();
                            downloadItem.type = DownloadItem.FileType.VIDEO;
                            downloadItem.md5 = this.f35914a.getVideo_OriginMD5();
                            C1258h.this.a(downloadItem, this.f35914a);
                            arrayList.add(downloadItem);
                        }
                    }
                    if (material.creative_type.intValue() == EnumC1270n.CreativeTypeVideo_Tar.a()) {
                        DownloadItem downloadItem2 = new DownloadItem();
                        downloadItem2.url = this.f35914a.getEndcard_url();
                        downloadItem2.filePath = this.f35914a.getEndCardZipPath();
                        downloadItem2.type = DownloadItem.FileType.FILE;
                        downloadItem2.md5 = this.f35914a.getEndCard_OriginMD5();
                        arrayList.add(downloadItem2);
                    }
                    Template template = this.f35914a.scene;
                    if (template != null && template.type.intValue() == 3 && (downloadItemA3 = a(this.f35914a.scene)) != null) {
                        arrayList.add(downloadItemA3);
                    }
                    Template template2 = material.main_template;
                    if (template2 != null && template2.type.intValue() == 3 && (downloadItemA2 = a(material.main_template)) != null) {
                        arrayList.add(downloadItemA2);
                    }
                    Template template3 = material.sub_template;
                    if (template3 != null && template3.type.intValue() == 3 && (downloadItemA = a(material.sub_template)) != null) {
                        arrayList.add(downloadItemA);
                    }
                    if (this.f35914a.isCatchVideo() && com.sigmob.sdk.base.utils.f.b(material.asset)) {
                        for (int i2 = 0; i2 < material.asset.size(); i2++) {
                            ResponseAsset responseAsset = material.asset.get(i2);
                            if (responseAsset != null && (responseAssetVideo = responseAsset.video) != null) {
                                String str = responseAssetVideo.url;
                                if (!com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
                                    File cacheFile = C1258h.d().getCacheFile(str);
                                    if (!cacheFile.exists()) {
                                        DownloadItem downloadItem3 = new DownloadItem();
                                        downloadItem3.url = str;
                                        downloadItem3.filePath = cacheFile.getAbsolutePath();
                                        downloadItem3.type = DownloadItem.FileType.MRAID_VIDEO;
                                        C1258h.this.a(downloadItem3, this.f35914a);
                                        arrayList.add(downloadItem3);
                                    }
                                }
                            }
                        }
                    }
                    SigmobLog.d("doInBackground: crid = " + this.f35914a.getCrid() + ", videoUrl = " + this.f35914a.getVideo_url() + ", endCardUrl = " + this.f35914a.getEndcard_url());
                    return arrayList;
                } catch (Throwable th) {
                    SigmobLog.e("doInBackground: error = " + th.getMessage());
                }
            }
            return null;
        }

        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(ArrayList<DownloadItem> arrayList) {
            Integer num;
            AdPrivacy adPrivacy;
            File[] fileArrListFiles;
            super.onPostExecute(arrayList);
            BaseAdUnit baseAdUnit = this.f35914a;
            if (baseAdUnit == null) {
                return;
            }
            MaterialMeta material = baseAdUnit.getMaterial();
            b bVar = (b) C1258h.this.f35901x.get(this.f35914a.getUuid());
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (arrayList.isEmpty()) {
                if (bVar != null) {
                    bVar.a(this.f35914a, null);
                }
                C1258h.this.g(this.f35914a);
            } else {
                FileDownloader fileDownloaderA = C1280t.a();
                ArrayList arrayList2 = C1258h.this.f35897t;
                int size = arrayList2.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        Object obj = arrayList2.get(i2);
                        i2++;
                        if (((BaseAdUnit) obj).getUuid().equals(this.f35914a.getUuid())) {
                            break;
                        }
                    } else if (bVar != null) {
                        C1258h.this.f35897t.add(this.f35914a);
                    }
                }
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    DownloadItem downloadItem = arrayList.get(i3);
                    i3++;
                    DownloadItem downloadItem2 = downloadItem;
                    String strMd5 = Md5Util.md5(downloadItem2.url);
                    SigmobLog.d("onPostExecute: url = " + downloadItem2.url);
                    if (downloadItem2.type != DownloadItem.FileType.VIDEO && ((num = (Integer) C1258h.f35886j.get(strMd5)) == null || num.equals(C1258h.f35882f))) {
                        C1258h.f35886j.put(strMd5, C1258h.f35880d);
                        fileDownloaderA.add(downloadItem2, C1258h.this.f35894b);
                    }
                }
            }
            if (material == null || (adPrivacy = material.ad_privacy) == null) {
                return;
            }
            String str = adPrivacy.privacy_template_url;
            if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
                return;
            }
            String strMd52 = Md5Util.md5(str);
            File fileD = com.sigmob.sdk.base.utils.n.d(com.sigmob.sdk.base.utils.n.f36610b);
            File fileA = com.sigmob.sdk.base.utils.n.a(fileD, strMd52 + ".html");
            if (fileA == null || fileA.exists()) {
                SigmobLog.i("privacyTemplateUrl: " + strMd52 + " is exists");
                return;
            }
            try {
                if (fileD.exists() && fileD.isDirectory() && (fileArrListFiles = fileD.listFiles()) != null) {
                    for (File file : fileArrListFiles) {
                        if (file.exists() && file.isFile() && file.delete()) {
                            SigmobLog.d("删除单个文件 " + file.getAbsolutePath() + " 成功");
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            DownloadItem downloadItem3 = new DownloadItem();
            downloadItem3.url = str;
            downloadItem3.filePath = fileA.getAbsolutePath();
            downloadItem3.type = DownloadItem.FileType.OTHER;
            arrayList.add(downloadItem3);
            C1280t.a().add(downloadItem3, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.d.1
                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void downloadProgress(DownloadItem downloadItem4, long j2, long j3) {
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onCancel(DownloadItem downloadItem4) {
                    SigmobLog.i("onPostExecute#onCancel: item = " + downloadItem4.url);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onErrorResponse(DownloadItem downloadItem4) {
                    SigmobLog.i("onPostExecute#onErrorResponse: item = " + downloadItem4.url);
                }

                @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                public void onSuccess(DownloadItem downloadItem4) {
                    SigmobLog.i("onPostExecute#onSuccess: item = " + downloadItem4.url);
                }
            });
        }
    }

    private C1258h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(BaseAdUnit baseAdUnit, BaseAdUnit baseAdUnit2) {
        return -com.sigmob.sdk.base.utils.e.a(baseAdUnit.getBidEcpm() > 0 ? baseAdUnit.getBidEcpm() : baseAdUnit.getBP(), baseAdUnit2.getBidEcpm() > 0 ? baseAdUnit2.getBidEcpm() : baseAdUnit2.getBP());
    }

    public static BaseAdUnit c(String str) {
        return f35884h.get(str);
    }

    public static synchronized HttpProxyCacheServer d() {
        try {
            if (f35885i == null) {
                e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f35885i;
    }

    public static List<BaseAdUnit> e(String str) {
        return f35877A.get(str);
    }

    public static BaseAdUnit f() {
        return f35888l;
    }

    public static synchronized C1258h g() {
        try {
            if (f35883g == null) {
                f35883g = new C1258h();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f35883g;
    }

    public static Integer h(String str) {
        if (com.sigmob.sdk.base.utils.s.b(str)) {
            HashMap<String, Integer> map = f35893s;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        return 1;
    }

    public static void i() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.b()), com.sigmob.sdk.base.o.a().u() + com.sigmob.sdk.base.o.a().z());
            if (fileArrClearCacheFileByCount == null) {
                str = "splash ad file list is null.";
            } else {
                str = "splash ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public static void j() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.f()), com.sigmob.sdk.base.o.a().z());
            if (fileArrClearCacheFileByCount == null) {
                str = "native ad file list is null.";
            } else {
                str = "native ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean native ad file error", th);
        }
    }

    private String l(String str) {
        File cacheFile;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (cacheFile = d().getCacheFile(str)) == null || !cacheFile.exists()) {
            return null;
        }
        return cacheFile.getAbsolutePath();
    }

    public static BaseAdUnit m() {
        return f35889m;
    }

    private static void t() {
        try {
            File fileF = com.sigmob.sdk.base.utils.n.f(com.sigmob.sdk.base.utils.n.f36611c);
            if (fileF == null) {
                return;
            }
            for (File file : FileUtil.orderByDate(fileF.getAbsolutePath())) {
                long jCurrentTimeMillis = System.currentTimeMillis() - com.sigmob.sdk.base.o.a().y();
                if (file.exists() && jCurrentTimeMillis > file.lastModified()) {
                    if (file.isFile()) {
                        if (!FileUtil.deleteFile(file.getAbsolutePath())) {
                            return;
                        }
                    } else if (file.isDirectory() && !FileUtil.deleteDirectory(file.getAbsolutePath())) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public String k(String str) {
        return this.f35895p.get(str);
    }

    public String n() {
        return this.f35899v;
    }

    public String o() {
        return this.f35900w;
    }

    public static synchronized ImageManager a() {
        try {
            if (f35887k == null) {
                File file = new File(com.sigmob.sdk.base.utils.n.f());
                synchronized (ImageManager.class) {
                    try {
                        if (f35887k == null) {
                            f35887k = new ImageManager(com.sigmob.sdk.b.e()).customCachePath(file);
                        }
                    } finally {
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f35887k;
    }

    public static synchronized void e() {
        HttpProxyCacheServer.Builder builder = new HttpProxyCacheServer.Builder(com.sigmob.sdk.b.e());
        try {
            builder.cacheDirectory(new File(com.sigmob.sdk.base.utils.n.b()));
        } catch (Throwable th) {
            SigmobLog.e("initHttpProxyCacheServer fail ", th);
        }
        f35885i = builder.build();
    }

    public static void h() {
        String str;
        try {
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount(a(FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.e()), System.currentTimeMillis(), com.sigmob.sdk.base.o.a().y()), com.sigmob.sdk.base.o.a().x());
            if (fileArrClearCacheFileByCount == null) {
                str = "splash ad file list is null.";
            } else {
                str = "splash ad file remain num: " + fileArrClearCacheFileByCount.length;
            }
            SigmobLog.i(str);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public static void k() {
        try {
            File[] fileArrOrderByDate = FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.a(com.sigmob.sdk.b.e()).getAbsolutePath());
            if (fileArrOrderByDate != null && fileArrOrderByDate.length != 0) {
                for (File file : fileArrOrderByDate) {
                    if (file != null && System.currentTimeMillis() - file.lastModified() > 604800000) {
                        SigmobLog.d("clearDownloadAPK: file = " + file.getName() + ", result = " + file.delete());
                    }
                }
                return;
            }
            SigmobLog.d("clearDownloadAPK: files = " + Arrays.toString(fileArrOrderByDate));
        } catch (Exception e2) {
            SigmobLog.e("clearDownloadAPK: error = " + e2.getMessage());
        }
    }

    public static void l() {
        try {
            File[] fileArrOrderByDate = FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.a());
            ArrayList arrayList = new ArrayList(Arrays.asList(fileArrOrderByDate));
            for (File file : fileArrOrderByDate) {
                if (!file.getPath().endsWith(".mp4") && !file.getPath().endsWith(".mp4.tmp") && !file.getPath().endsWith(".tgz") && !file.getPath().endsWith(".html")) {
                    arrayList.remove(file);
                }
            }
            File[] fileArrClearCacheFileByCount = FileUtil.clearCacheFileByCount((File[]) arrayList.toArray(new File[0]), 5);
            SigmobLog.i(fileArrClearCacheFileByCount == null ? "splash ad file list is null" : "splash ad file remain num: " + fileArrClearCacheFileByCount.length);
        } catch (Throwable th) {
            SigmobLog.e("clean splash ad file error", th);
        }
    }

    public void f(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null || com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getCrid()) || com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getAdslot_id())) {
            return;
        }
        Map<String, AdCache> mapA = a(baseAdUnit.getAd_type());
        if ((mapA == null || mapA.size() <= 29) && mapA != null) {
            AdCache adCache = mapA.get(baseAdUnit.getAdslot_id());
            ArrayList arrayList = new ArrayList();
            arrayList.add(baseAdUnit.getCrid());
            if (adCache != null) {
                arrayList.addAll(adCache.crids);
            }
            mapA.put(baseAdUnit.getAdslot_id(), new AdCache(Integer.valueOf(baseAdUnit.getAd_type()), arrayList));
        }
    }

    public void g(BaseAdUnit baseAdUnit) {
        this.f35897t.remove(baseAdUnit);
        this.f35901x.remove(baseAdUnit.getUuid());
    }

    public void i(String str) {
        this.f35899v = str;
    }

    public void j(String str) {
        this.f35900w = str;
    }

    public static BidResponse a(String str) {
        return f35892q.get(str);
    }

    public static void b() {
        try {
            File fileD = com.sigmob.sdk.base.utils.n.d(com.sigmob.sdk.base.utils.n.f36609a);
            if (fileD == null) {
                return;
            }
            FileUtil.deleteDirectory(fileD.getAbsolutePath());
            t();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public static void c() {
        try {
            for (File file : FileUtil.orderByDate(com.sigmob.sdk.base.utils.n.c())) {
                long jCurrentTimeMillis = System.currentTimeMillis() - ((com.sigmob.sdk.base.o.a().af() * SdkConfigData.DEFAULT_REQUEST_INTERVAL) * 1000);
                if (file.exists() && jCurrentTimeMillis > file.lastModified()) {
                    if (file.isFile()) {
                        if (!FileUtil.deleteFile(file.getAbsolutePath())) {
                            return;
                        }
                    } else if (file.isDirectory() && !FileUtil.deleteDirectory(file.getAbsolutePath())) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static List<BaseAdUnit> d(String str) {
        List<BaseAdUnit> list;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (list = f35890n.get(str)) == null || list.isEmpty()) {
            return null;
        }
        Iterator it = new CopyOnWriteArrayList(list).iterator();
        while (it.hasNext()) {
            BaseAdUnit baseAdUnit = (BaseAdUnit) it.next();
            if (baseAdUnit.isExpiredAd()) {
                list.remove(baseAdUnit);
            }
        }
        return list;
    }

    public static void f(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        HashMap<String, Integer> map = f35893s;
        Integer num = map.get(str);
        map.put(str, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public static void g(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        f35893s.remove(str);
    }

    public void e(BaseAdUnit baseAdUnit) {
        Map<String, AdCache> mapA;
        AdCache adCache;
        if (baseAdUnit == null || com.sigmob.sdk.base.utils.s.a((CharSequence) baseAdUnit.getAdslot_id()) || (mapA = a(baseAdUnit.getAd_type())) == null || (adCache = mapA.get(baseAdUnit.getAdslot_id())) == null || adCache.crids == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(adCache.crids);
        String crid = baseAdUnit.getCrid();
        if (arrayList.contains(crid)) {
            arrayList.remove(crid);
        }
        mapA.put(baseAdUnit.getAdslot_id(), new AdCache(Integer.valueOf(baseAdUnit.getAd_type()), arrayList));
    }

    public static void c(BaseAdUnit baseAdUnit) {
        f35888l = baseAdUnit;
    }

    public static void d(BaseAdUnit baseAdUnit) {
        f35889m = baseAdUnit;
    }

    public void b(a aVar) {
        if (aVar == null || !this.f35896r.contains(aVar)) {
            return;
        }
        this.f35896r.remove(aVar);
    }

    public static List<BaseAdUnit> a(String str, int i2, int i3) {
        List<BaseAdUnit> listD = d(str);
        if (com.sigmob.sdk.base.utils.f.a(listD)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = new CopyOnWriteArrayList(listD).iterator();
        while (it.hasNext()) {
            BaseAdUnit baseAdUnit = (BaseAdUnit) it.next();
            int bidEcpm = baseAdUnit.getBidEcpm();
            if (bidEcpm == 0) {
                bidEcpm = baseAdUnit.getBP();
            }
            if (bidEcpm >= i2 || i2 == 0) {
                arrayList.add(baseAdUnit);
                listD.remove(baseAdUnit);
            }
            if (baseAdUnit.bidding_response != null || arrayList.size() >= i3) {
                break;
            }
        }
        return arrayList;
    }

    public static void b(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return;
        }
        String uuid = baseAdUnit.getUuid();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) uuid)) {
            return;
        }
        f35884h.remove(uuid);
        f35877A.remove(uuid);
    }

    private void b(final BaseAdUnit baseAdUnit, final b bVar) {
        if (baseAdUnit == null) {
            return;
        }
        File adPrivacyTemplateFile = baseAdUnit.getAdPrivacyTemplateFile();
        if (adPrivacyTemplateFile != null && !adPrivacyTemplateFile.exists()) {
            DownloadItem downloadItem = new DownloadItem();
            downloadItem.url = baseAdUnit.getadPrivacy().privacy_template_url;
            downloadItem.filePath = adPrivacyTemplateFile.getAbsolutePath();
            downloadItem.type = DownloadItem.FileType.OTHER;
            FileDownloader fileDownloaderA = C1280t.a();
            if (fileDownloaderA != null) {
                fileDownloaderA.add(downloadItem, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.3
                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void downloadProgress(DownloadItem downloadItem2, long j2, long j3) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onCancel(DownloadItem downloadItem2) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onErrorResponse(DownloadItem downloadItem2) {
                    }

                    @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
                    public void onSuccess(DownloadItem downloadItem2) {
                    }
                });
            }
        }
        File file = new File(baseAdUnit.getSplashFilePath());
        if (file.exists()) {
            file.setLastModified(System.currentTimeMillis());
            if (bVar != null) {
                bVar.a(baseAdUnit, null);
                return;
            }
            return;
        }
        FileDownloader fileDownloaderA2 = C1280t.a();
        DownloadItem downloadItem2 = new DownloadItem();
        downloadItem2.filePath = baseAdUnit.getSplashFilePath();
        downloadItem2.url = baseAdUnit.getSplashURL();
        downloadItem2.type = DownloadItem.FileType.OTHER;
        downloadItem2.userRange = false;
        fileDownloaderA2.add(downloadItem2, new FileDownloadRequest.FileDownloadListener() { // from class: com.sigmob.sdk.base.common.h.4
            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void downloadProgress(DownloadItem downloadItem3, long j2, long j3) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onCancel(DownloadItem downloadItem3) {
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onErrorResponse(DownloadItem downloadItem3) {
                String message = downloadItem3.error.getMessage();
                if (downloadItem3.error.networkResponse != null) {
                    message = message + " status code " + downloadItem3.error.networkResponse.statusCode;
                }
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(baseAdUnit, message);
                }
                SigmobLog.e("onErrorResponse: " + message);
            }

            @Override // com.czhj.volley.toolbox.FileDownloadRequest.FileDownloadListener
            public void onSuccess(DownloadItem downloadItem3) {
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(baseAdUnit, null);
                }
            }
        });
    }

    public Map<String, AdCache> a(int i2) {
        if (i2 == 1 || i2 == 4) {
            return this.f35898u;
        }
        if (i2 == 5) {
            return this.f35902y;
        }
        if (i2 != 6) {
            return null;
        }
        return this.f35903z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final DownloadItem downloadItem, BaseAdUnit baseAdUnit) {
        if (f35885i == null) {
            return;
        }
        String str = downloadItem.url;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || f35885i.isCached(str)) {
            return;
        }
        String proxyUrl = f35885i.getProxyUrl(str);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        f35885i.registerCacheListener(new com.sigmob.sdk.videocache.d() { // from class: com.sigmob.sdk.base.common.h.2
            @Override // com.sigmob.sdk.videocache.d
            public void a(File file, String str2, int i2) {
                SigmobLog.d(file + " onCacheAvailable " + i2);
                if (i2 != 100 || file == null || file.getAbsolutePath().endsWith("download")) {
                    return;
                }
                C1258h.f35885i.unregisterCacheListener(this);
                downloadItem.networkMs = System.currentTimeMillis() - jCurrentTimeMillis;
                C1258h.this.new c(downloadItem).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
            }

            @Override // com.sigmob.sdk.videocache.d
            public void a(String str2, Throwable th) {
                C1258h.f35885i.unregisterCacheListener(this);
                downloadItem.error = new VolleyError(WindAdError.ERROR_SIGMOB_VIDEO_FILE.getMessage());
                downloadItem.networkMs = System.currentTimeMillis() - jCurrentTimeMillis;
                C1258h.this.new c(downloadItem).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
                SigmobLog.e(str2 + " onCacheUnavailable ", th);
            }
        }, str);
        com.sigmob.sdk.videocache.w.a(com.sigmob.sdk.b.e()).a(proxyUrl);
    }

    public static void b(String str) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str)) {
            return;
        }
        f35892q.remove(str);
    }

    public void a(a aVar) {
        if (aVar == null || this.f35896r.contains(aVar)) {
            return;
        }
        this.f35896r.add(aVar);
    }

    public static void a(BaseAdUnit baseAdUnit) {
        if (baseAdUnit == null) {
            return;
        }
        String uuid = baseAdUnit.getUuid();
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) uuid)) {
            return;
        }
        f35884h.put(uuid, baseAdUnit);
    }

    public void a(BaseAdUnit baseAdUnit, b bVar) {
        if (bVar != null) {
            bVar.a(baseAdUnit);
        }
        if (baseAdUnit == null) {
            SigmobLog.e("adUnit is null.");
            if (bVar != null) {
                bVar.a(null, "adUnit is null.");
                return;
            }
            return;
        }
        if (baseAdUnit.getAd_type() == 2) {
            b(baseAdUnit, bVar);
            return;
        }
        if (bVar != null) {
            this.f35901x.put(baseAdUnit.getUuid(), bVar);
        }
        try {
            new d(baseAdUnit).executeOnExecutor(ThreadPoolFactory.BackgroundThreadPool.getInstance().getExecutorService(), new Object[0]);
        } catch (Throwable th) {
            SigmobLog.e("AdUnitCheckCacheTask execute error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BaseAdUnit baseAdUnit, String str, b bVar) {
        if (str != null || (baseAdUnit.isVideoExist() && baseAdUnit.isEndCardIndexExist())) {
            if (bVar != null) {
                bVar.a(baseAdUnit, str);
            }
            g(baseAdUnit);
        }
    }

    public void a(String str, int i2) {
        Map<String, AdCache> mapA;
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || (mapA = a(i2)) == null) {
            return;
        }
        mapA.remove(str);
    }

    public static void a(String str, BidResponse bidResponse) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || bidResponse == null) {
            return;
        }
        f35892q.put(str, bidResponse);
    }

    public static void a(String str, List<BaseAdUnit> list, int i2) {
        if (com.sigmob.sdk.base.utils.s.a((CharSequence) str) || com.sigmob.sdk.base.utils.f.a(list)) {
            return;
        }
        List<BaseAdUnit> listD = d(str);
        if (listD != null && !listD.isEmpty() && i2 != 0) {
            listD.addAll(list);
            list = listD;
        }
        Collections.sort(list, new Comparator() { // from class: com.sigmob.sdk.base.common.U
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C1258h.a((BaseAdUnit) obj, (BaseAdUnit) obj2);
            }
        });
        if (i2 <= 0) {
            f35890n.remove(str);
            return;
        }
        if (list.size() > i2) {
            list = new LinkedList(list.subList(0, i2));
        }
        f35890n.put(str, list);
    }

    public static void a(List<BaseAdUnit> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        f35877A.put(list.get(0).getUuid(), list);
    }

    public static File[] a(File[] fileArr, long j2, long j3) {
        if (fileArr == null || fileArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(fileArr));
        for (File file : fileArr) {
            long j4 = j2 - j3;
            if (file.exists() && j4 > file.lastModified()) {
                file.delete();
                arrayList.remove(file);
                SigmobLog.d("file delete " + file.getName());
            }
        }
        return (File[]) arrayList.toArray(new File[0]);
    }
}
