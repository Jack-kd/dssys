package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.interaction.InteractionModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.layout.LayoutModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.view.ViewModel;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class RenderModel extends ASNPJsonResponseModel {

    @ng(key = "uid")
    private String id;

    @ng(key = "")
    private InteractionModel interactionModel;

    @ng(key = "layer")
    private int layer;

    @ng(key = "")
    private LayoutModel layoutModel;

    @ng(key = "superView")
    private String superView;

    @ng(key = "")
    private ViewModel viewModel;

    public RenderModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public String getId() {
        return this.id;
    }

    public InteractionModel getInteractionModel() {
        return this.interactionModel;
    }

    public int getLayer() {
        return this.layer;
    }

    public LayoutModel getLayoutModel() {
        return this.layoutModel;
    }

    public String getSuperView() {
        return this.superView;
    }

    public ViewModel getViewModel() {
        return this.viewModel;
    }
}
