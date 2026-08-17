package com.byazt.ws;

import com.byazt.nke.jl;
import com.byazt.nke.lv;

@com.byazt.kj.hp(hp = {0, 1, 770, 30})
/* loaded from: classes3.dex */
public class jx implements lv {
    public static int hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f27113j;
    public long jx;

    /* renamed from: l, reason: collision with root package name */
    public long f27114l = 0;

    /* renamed from: w, reason: collision with root package name */
    public String f27115w;

    public jx() {
        hp++;
        this.f27115w = "image_request_" + hp;
    }

    private String hp(String str, jl jlVar) {
        com.byazt.kz.hp hpVarJl;
        if (str == null) {
            return str;
        }
        switch (str) {
            case "success":
                return "成功";
            case "raw_cache":
                return "查询RAW内存缓存";
            case "image_type":
                return "判断图片类型：";
            case "disk_cache":
                return "查询文件缓存";
            case "decode":
                return "解码";
            case "failed":
                if (!(jlVar instanceof com.byazt.kz.jx) || (hpVarJl = ((com.byazt.kz.jx) jlVar).jl()) == null) {
                    return "失败";
                }
                Throwable thJx = hpVarJl.jx();
                StringBuilder sb = new StringBuilder("失败：code:");
                sb.append(hpVarJl.hp());
                sb.append(", msg:");
                sb.append(hpVarJl.l());
                sb.append(", exception:");
                sb.append(thJx != null ? thJx.getMessage() : "null \r\n");
                return sb.toString();
            case "check_duplicate":
                return "检查重复请求";
            case "memory_cache":
                return "查询Bitmap内存缓存";
            case "net_request":
                return "请求网络";
            case "generate_key":
                return "生成KEY:" + jlVar.getMemoryCacheKey();
            case "cache_policy":
                return "查询缓存策略";
            default:
                return str;
        }
    }

    @Override // com.byazt.nke.lv
    public void onStepEnd(String str, jl jlVar) {
        this.jx += System.currentTimeMillis() - this.f27114l;
        hp(str, jlVar);
    }

    @Override // com.byazt.nke.lv
    public void onStepStart(String str, jl jlVar) {
        if (!this.f27113j) {
            jlVar.getUrl();
            jlVar.getWidth();
            jlVar.getHeight();
            this.f27113j = true;
        }
        this.f27114l = System.currentTimeMillis();
        hp(str, jlVar);
    }
}
