package com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ASNPJsonResponseModel;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.ClickAreaParams;
import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.income.optimize.par.SlideParams;
import com.beizi.fusion.ng;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class OptimizeModel extends ASNPJsonResponseModel {

    @ng(key = "clickArea")
    private ClickAreaParams clickArea;

    @ng(key = "closeClickNum")
    private int closeClickNum;

    @ng(key = "slideNum")
    private int holdSlideNum;

    @ng(key = "adSlide")
    private SlideParams slide;

    @ng(key = "touchDownNum")
    private int touchDownNum;

    public OptimizeModel(JSONObject jSONObject) {
        super(jSONObject);
    }

    public ClickAreaParams getClickArea() {
        return this.clickArea;
    }

    public int getCloseClickNum() {
        return this.closeClickNum;
    }

    public int getHoldSlideNum() {
        return this.holdSlideNum;
    }

    public SlideParams getSlide() {
        return this.slide;
    }

    public int getTouchDownNum() {
        return this.touchDownNum;
    }
}
