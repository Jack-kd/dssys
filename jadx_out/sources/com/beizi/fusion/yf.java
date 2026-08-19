package com.beizi.fusion;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.anythink.core.common.f.g;
import com.beizi.fusion.asnp.adn.ad.ad.nativead.render.view.asnp.prefab.ScopeExpressContainer;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.permission.PermissionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.trace.AdTraceModel;
import com.beizi.fusion.asnp.adn.ad.publish.ad.unified.view.ASNPUnifiedExpressContainer;
import com.beizi.fusion.ee;
import com.beizi.fusion.ef;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class yf extends z0 implements yc {

    /* renamed from: A, reason: collision with root package name */
    private final String f17675A;

    /* renamed from: B, reason: collision with root package name */
    private final String f17676B;

    /* renamed from: C, reason: collision with root package name */
    private ASNPUnifiedExpressContainer f17677C;

    /* renamed from: D, reason: collision with root package name */
    private Map f17678D;

    /* renamed from: v, reason: collision with root package name */
    private final String f17679v;

    /* renamed from: w, reason: collision with root package name */
    private final String f17680w;

    /* renamed from: x, reason: collision with root package name */
    private final String f17681x;

    /* renamed from: y, reason: collision with root package name */
    private final String f17682y;

    /* renamed from: z, reason: collision with root package name */
    private final String f17683z;

    public class a implements rb {
        public a() {
        }

        @Override // com.beizi.fusion.rb
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean fetch(AssetModel assetModel, Object obj) {
            return assetModel.getVideo() != null;
        }
    }

    public static class b implements ef.a {

        /* renamed from: a, reason: collision with root package name */
        private final PermissionModel f17685a;

        public /* synthetic */ b(PermissionModel permissionModel, a aVar) {
            this(permissionModel);
        }

        @Override // com.beizi.fusion.ef.a
        public String a() {
            return this.f17685a.getDescribe();
        }

        @Override // com.beizi.fusion.ef.a
        public String getTitle() {
            return this.f17685a.getTitle();
        }

        private b(PermissionModel permissionModel) {
            this.f17685a = permissionModel;
        }
    }

    public class c implements he {
        private c() {
        }

        @Override // com.beizi.fusion.he
        public void a() {
        }

        @Override // com.beizi.fusion.he
        public void f() {
        }

        public /* synthetic */ c(yf yfVar, a aVar) {
            this();
        }

        @Override // com.beizi.fusion.ab
        public void a(ge geVar) {
        }

        @Override // com.beizi.fusion.he
        public void a(cb cbVar) {
            je jeVarD = cbVar.d();
            if (jeVarD instanceof bd) {
                bd bdVar = (bd) jeVarD;
                zc zcVarA = yf.this.a(cbVar.d(), bdVar.getInteractionType(), bdVar.getActionType());
                if (zcVarA != null) {
                    bdVar.bindInteractionForm(zcVarA);
                }
            }
        }
    }

    public static class d implements ef {

        /* renamed from: a, reason: collision with root package name */
        private final DownloadInfoModel f17687a;

        public /* synthetic */ d(DownloadInfoModel downloadInfoModel, a aVar) {
            this(downloadInfoModel);
        }

        @Override // com.beizi.fusion.ef
        public List a() {
            a aVar = null;
            if (this.f17687a.getPermission() == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<PermissionModel> it = this.f17687a.getPermission().iterator();
            while (it.hasNext()) {
                arrayList.add(new b(it.next(), aVar));
            }
            return arrayList;
        }

        @Override // com.beizi.fusion.ef
        public String b() {
            return this.f17687a.getPermissionUrl();
        }

        @Override // com.beizi.fusion.ef
        public String c() {
            return this.f17687a.getVersion();
        }

        @Override // com.beizi.fusion.ef
        public String d() {
            return this.f17687a.getAppIntroduction();
        }

        @Override // com.beizi.fusion.ef
        public String e() {
            return this.f17687a.getDeveloper();
        }

        @Override // com.beizi.fusion.ef
        public String f() {
            return this.f17687a.getPolicyUrl();
        }

        @Override // com.beizi.fusion.ef
        public String getName() {
            return this.f17687a.getName();
        }

        private d(DownloadInfoModel downloadInfoModel) {
            this.f17687a = downloadInfoModel;
        }
    }

    public yf(Context context, AdItemModel adItemModel, da daVar, AdTraceModel adTraceModel) {
        super(context, adItemModel, daVar, adTraceModel);
        this.f17679v = g.a.f3271h;
        this.f17680w = "desc";
        this.f17681x = "image";
        this.f17682y = "icon";
        this.f17683z = "video";
        this.f17675A = "actionText";
        this.f17676B = "adLogo";
        w();
    }

    private void s() {
    }

    private List t() {
        NativeModel nativeModelA = a(this.f17733b);
        if (nativeModelA != null) {
            return nativeModelA.getAsset();
        }
        return null;
    }

    private List u() {
        Map map = this.f17678D;
        return map != null ? (List) map.get("image") : Collections.EMPTY_LIST;
    }

    private AssetModel v() {
        return (AssetModel) l5.a(t(), null, new a());
    }

    private void w() {
        List<AssetModel> listT = t();
        if (listT != null) {
            this.f17678D = new HashMap();
            for (AssetModel assetModel : listT) {
                String strTrim = assetModel.getId().trim();
                if (!TextUtils.isEmpty(strTrim)) {
                    switch (strTrim.charAt(0)) {
                        case '1':
                            if (assetModel.getImage() != null) {
                                Map map = this.f17678D;
                                map.put("image", a((List) map.get("image"), assetModel.getImage().getUrl()));
                                break;
                            } else {
                                break;
                            }
                        case '2':
                            if (assetModel.getVideo() != null) {
                                Map map2 = this.f17678D;
                                map2.put("video", a((List) map2.get("video"), assetModel.getVideo().getUrl()));
                                break;
                            } else {
                                break;
                            }
                        case ILivePlayer.LIVE_DATALOADER_RW_TIMEOUT /* 51 */:
                            if (assetModel.getTitle() != null) {
                                Map map3 = this.f17678D;
                                map3.put(g.a.f3271h, a((List) map3.get(g.a.f3271h), assetModel.getTitle().getText()));
                                break;
                            } else {
                                break;
                            }
                        case '4':
                            if (assetModel.getTitle() != null) {
                                Map map4 = this.f17678D;
                                map4.put("desc", a((List) map4.get("desc"), assetModel.getTitle().getText()));
                                break;
                            } else {
                                break;
                            }
                        case '5':
                            if (assetModel.getImage() != null) {
                                Map map5 = this.f17678D;
                                map5.put("icon", a((List) map5.get("icon"), assetModel.getImage().getUrl()));
                                break;
                            } else {
                                break;
                            }
                        case '6':
                            if (assetModel.getTitle() != null) {
                                Map map6 = this.f17678D;
                                map6.put("actionText", a((List) map6.get("actionText"), assetModel.getTitle().getText()));
                                break;
                            } else {
                                break;
                            }
                        case '7':
                            if (assetModel.getImage() != null) {
                                Map map7 = this.f17678D;
                                map7.put("adLogo", a((List) map7.get("adLogo"), assetModel.getImage().getUrl()));
                                break;
                            } else {
                                break;
                            }
                    }
                }
            }
        }
    }

    private void x() {
        ee eeVarA = ee.a.a(this.f17732a, this.f17734c);
        eeVarA.a(this.f17733b);
        if (eeVarA instanceof ya) {
            ya yaVar = (ya) eeVarA;
            if (yaVar.d() != null) {
                yaVar.d().a(new c(this, null));
            }
        }
        if (eeVarA instanceof gn) {
            ((gn) eeVarA).a(this.f17677C);
        }
        eeVarA.c();
    }

    @Override // com.beizi.fusion.z0, com.beizi.fusion.kb
    public void b() {
        super.b();
        ASNPUnifiedExpressContainer aSNPUnifiedExpressContainer = this.f17677C;
        if (aSNPUnifiedExpressContainer != null) {
            aSNPUnifiedExpressContainer.onViewDestroy();
            this.f17677C.removeFromParent();
        }
    }

    @Override // com.beizi.fusion.yc
    public List c() {
        return u();
    }

    @Override // com.beizi.fusion.yc
    public ef d() {
        NativeModel nativeModelA = a(this.f17733b);
        a aVar = null;
        if (nativeModelA == null || nativeModelA.getDownloadInfo() == null) {
            return null;
        }
        return new d(nativeModelA.getDownloadInfo(), aVar);
    }

    @Override // com.beizi.fusion.yc
    public String g() {
        return a("actionText");
    }

    @Override // com.beizi.fusion.yc
    public String getAdLogoUrl() {
        return a("adLogo");
    }

    @Override // com.beizi.fusion.yc
    public String getDesc() {
        return a("desc");
    }

    @Override // com.beizi.fusion.yc
    public String getIconUrl() {
        return a("icon");
    }

    @Override // com.beizi.fusion.yc
    public String getTitle() {
        return a(g.a.f3271h);
    }

    @Override // com.beizi.fusion.yc
    public String h() {
        return a("image");
    }

    @Override // com.beizi.fusion.yc
    public u0 i() {
        return (c() == null || c().size() <= 1) ? v() != null ? u0.PATTERN_VIDEO : u0.PATTERN_TEXT_IMAGE : u0.PATTERN_3_IMAGES;
    }

    @Override // com.beizi.fusion.kb
    public View a() {
        return this.f17677C;
    }

    @Override // com.beizi.fusion.yc
    public void a(Activity activity, ASNPUnifiedExpressContainer aSNPUnifiedExpressContainer, List list) {
        this.f17677C = aSNPUnifiedExpressContainer;
        ScopeExpressContainer.d.a(aSNPUnifiedExpressContainer, b(this.f17733b), q(), r());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((View) it.next());
        }
        x();
    }

    private void b(View view) {
        if (this.f17677C != null) {
            view.setTag(gm.a(this.f17732a, "scope_root_container"), this.f17677C);
            a(view, "click", "click").a((Object) null);
        } else {
            s();
        }
    }

    private String a(String str) {
        List list;
        Map map = this.f17678D;
        if (map != null && (list = (List) map.get(str)) != null && !list.isEmpty()) {
            return (String) list.get(0);
        }
        return "";
    }

    private List a(List list, String str) {
        if (list == null) {
            list = new ArrayList();
        }
        list.add(str);
        return list;
    }
}
