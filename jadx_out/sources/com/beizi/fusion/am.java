package com.beizi.fusion;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.AssetModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.ImageModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.asset.type.VideoModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class am implements cb {

    /* renamed from: a, reason: collision with root package name */
    private final int f12653a;

    /* renamed from: b, reason: collision with root package name */
    private cb f12654b;

    /* renamed from: d, reason: collision with root package name */
    private cb f12656d;

    /* renamed from: e, reason: collision with root package name */
    private final je f12657e;

    /* renamed from: f, reason: collision with root package name */
    private final ie f12658f;

    /* renamed from: h, reason: collision with root package name */
    private final Map f12660h;

    /* renamed from: g, reason: collision with root package name */
    private boolean f12659g = false;

    /* renamed from: c, reason: collision with root package name */
    private final Map f12655c = new HashMap();

    public am(je jeVar, RenderModel renderModel, Map map, int i2) {
        this.f12657e = jeVar;
        jeVar.setScopeViewID(renderModel.getId());
        jeVar.bindRenderModel(renderModel);
        this.f12660h = map;
        map.put(b(), this);
        this.f12658f = new bm(jeVar.getContext(), renderModel.getLayoutModel(), this, renderModel.getSuperView());
        this.f12653a = i2;
    }

    @Override // com.beizi.fusion.cb
    public void a(cb cbVar) {
        this.f12655c.put(cbVar.b(), cbVar);
    }

    public void b(cb cbVar) {
        this.f12654b = cbVar;
    }

    public void c(cb cbVar) {
        this.f12656d = cbVar;
    }

    @Override // com.beizi.fusion.cb
    public je d() {
        return this.f12657e;
    }

    @Override // com.beizi.fusion.cb
    public cb e() {
        return this.f12654b;
    }

    @Override // com.beizi.fusion.cb
    public int f() {
        return this.f12653a;
    }

    public int g() {
        Map map = this.f12655c;
        if (map != null) {
            return map.size();
        }
        return 0;
    }

    public List h() {
        Map map = this.f12655c;
        if (map == null || map.isEmpty()) {
            return null;
        }
        return new ArrayList(this.f12655c.values());
    }

    public Map i() {
        return this.f12660h;
    }

    @Override // com.beizi.fusion.cb
    public ie a() {
        return this.f12658f;
    }

    @Override // com.beizi.fusion.cb
    public String b() {
        return this.f12657e.getScopeViewID();
    }

    @Override // com.beizi.fusion.cb
    public boolean c() {
        return this.f12659g;
    }

    public void a(AssetModel assetModel) {
        ImageModel image = assetModel.getImage();
        VideoModel video = assetModel.getVideo();
        if (image != null) {
            this.f12658f.a(image.getImageWidth(), image.getImageHeight());
        }
        if (video != null) {
            this.f12658f.a(video.getVideoWidth(), video.getVideoHeight());
        }
        if (image != null || video != null) {
            this.f12659g = true;
        }
        this.f12657e.bindAssetModel(assetModel);
    }
}
