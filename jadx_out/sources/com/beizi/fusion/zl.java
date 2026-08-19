package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.AdItemModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.creative.CreativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.speed.SpeedModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.ra;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public class zl implements ra {

    /* renamed from: a, reason: collision with root package name */
    private final ra.a f17897a;

    /* renamed from: b, reason: collision with root package name */
    private final NativeModel f17898b;

    /* renamed from: c, reason: collision with root package name */
    private final CreativeModel f17899c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f17900d;

    /* renamed from: e, reason: collision with root package name */
    private Map f17901e;

    /* renamed from: f, reason: collision with root package name */
    private cb f17902f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f17903g = false;

    /* renamed from: h, reason: collision with root package name */
    private JSONArray f17904h;

    public class a implements rb {
        public a() {
        }

        @Override // com.beizi.fusion.rb
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean fetch(AssetModel assetModel, String str) {
            if (assetModel == null) {
                return false;
            }
            String id = assetModel.getId();
            if (TextUtils.isEmpty(id)) {
                return false;
            }
            return id.equals(str);
        }
    }

    public zl(Context context, AdItemModel adItemModel, ra.a aVar) {
        this.f17900d = context;
        this.f17898b = adItemModel.getNativeModel();
        this.f17899c = adItemModel.getCreativeModel();
        this.f17897a = aVar;
        a(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r9) {
        /*
            r8 = this;
            android.util.ArrayMap r0 = new android.util.ArrayMap
            r0.<init>()
            r8.f17901e = r0
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r0 = r8.f17898b
            if (r0 == 0) goto L77
            org.json.JSONObject r0 = r0.asJsonObject()
            java.lang.String r1 = "scheme"
            org.json.JSONArray r0 = com.beizi.fusion.pg.a(r0, r1)
            r8.f17904h = r0
            r0 = 0
            if (r9 == 0) goto L21
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            java.util.List r9 = r9.getRender()
            goto L22
        L21:
            r9 = r0
        L22:
            if (r9 == 0) goto L2a
            boolean r1 = r9.isEmpty()
            if (r1 == 0) goto L38
        L2a:
            com.beizi.fusion.ra$a r1 = r8.f17897a
            if (r1 == 0) goto L38
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            java.lang.String r9 = r9.getRenderId()
            java.util.List r9 = r1.a(r9)
        L38:
            r3 = r9
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            java.util.List r4 = r9.getAsset()
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel r9 = r9.getLink()
            if (r9 == 0) goto L56
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.link.LinkModel r9 = r9.getLink()
            int r9 = r9.getInteractType()
            r1 = 1
            if (r9 != r1) goto L56
        L54:
            r6 = r1
            goto L58
        L56:
            r1 = 0
            goto L54
        L58:
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.IncomeModel r9 = r9.getIncome()
            if (r9 == 0) goto L6a
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.IncomeModel r9 = r9.getIncome()
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.speed.SpeedModel r0 = r9.getSpeedModel()
        L6a:
            r5 = r0
            android.content.Context r2 = r8.f17900d
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.NativeModel r9 = r8.f17898b
            com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.down.DownloadInfoModel r7 = r9.getDownloadInfo()
            r1 = r8
            r1.a(r2, r3, r4, r5, r6, r7)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.beizi.fusion.zl.a(boolean):void");
    }

    @Override // com.beizi.fusion.ra
    public void b() {
    }

    @Override // com.beizi.fusion.ra
    public void c() {
        if (this.f17897a != null) {
            a(false);
        } else {
            this.f17903g = false;
        }
    }

    @Override // com.beizi.fusion.ra
    public String d() {
        JSONArray jSONArray = this.f17904h;
        String string = jSONArray != null ? jSONArray.toString() : "";
        this.f17904h = null;
        return string;
    }

    @Override // com.beizi.fusion.ra
    public boolean e() {
        return this.f17903g;
    }

    @Override // com.beizi.fusion.ra
    public cb f() {
        return this.f17902f;
    }

    @Override // com.beizi.fusion.ra
    public int g() {
        Map map = this.f17901e;
        if (map != null) {
            return map.size();
        }
        return 0;
    }

    private void a(Context context, List list, List list2, SpeedModel speedModel, boolean z2, DownloadInfoModel downloadInfoModel) {
        AssetModel assetModel;
        if (list != null && !list.isEmpty()) {
            Collections.sort(list, xl.b());
            for (int i2 = 0; i2 < list.size(); i2++) {
                RenderModel renderModel = (RenderModel) list.get(i2);
                if (renderModel != null && !TextUtils.isEmpty(renderModel.getId())) {
                    String controlType = renderModel.getViewModel() != null ? renderModel.getViewModel().getControlType() : "";
                    je jeVarA = in.a(context, controlType, renderModel.getInteractionModel() != null ? renderModel.getInteractionModel().getBindEvent() : "");
                    if (jeVarA instanceof le) {
                        ((le) jeVarA).setRenderWithDownload(z2);
                    }
                    if (jeVarA instanceof ke) {
                        ((ke) jeVarA).bindRenderSpeedPriority(speedModel);
                    }
                    am amVar = new am(jeVarA, renderModel, this.f17901e, i2);
                    String superView = renderModel.getSuperView();
                    if (!TextUtils.isEmpty(superView) && this.f17901e.containsKey(superView)) {
                        cb cbVar = (cb) this.f17901e.get(superView);
                        if (cbVar != null) {
                            rm.a("RenderHierarchy", String.format("当前model (%s) 的 父节点 (%s) 存在. 设置父子节点关系...", renderModel.getId(), superView));
                            cbVar.a(amVar);
                            amVar.b(cbVar);
                        }
                    } else {
                        this.f17902f = amVar;
                    }
                    amVar.c(this.f17902f);
                    if (renderModel.getViewModel() != null) {
                        a(controlType, renderModel.getViewModel());
                        String assetsId = renderModel.getViewModel().getAssetsId();
                        if (!TextUtils.isEmpty(assetsId) && (assetModel = (AssetModel) l5.a(list2, assetsId, new a())) != null) {
                            amVar.a(assetModel);
                        }
                    }
                    if (jeVarA instanceof dc) {
                        ((dc) jeVarA).bindDownloadInfo(downloadInfoModel);
                    }
                }
            }
            this.f17903g = true;
            return;
        }
        this.f17903g = false;
    }

    private void a(String str, ViewModel viewModel) {
        CreativeModel creativeModel;
        if (!"tag".equalsIgnoreCase(str) || (creativeModel = this.f17899c) == null) {
            return;
        }
        viewModel.setCMD5(creativeModel.getMaterialID());
    }

    @Override // com.beizi.fusion.ra
    public cb a(String str) {
        Map map = this.f17901e;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return (cb) this.f17901e.get(str);
    }
}
