package com.sigmob.sdk.base.network;

import android.util.Base64;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.common.models.ModelBuilderCreator;
import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.ParseError;
import com.czhj.volley.Response;
import com.czhj.volley.toolbox.HttpHeaderParser;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigRequest;
import com.sigmob.sdk.base.models.config.SigmobSdkConfigResponse;
import java.util.Map;

/* loaded from: classes4.dex */
public class g extends SigmobRequest<SigmobSdkConfigResponse> {

    /* renamed from: a, reason: collision with root package name */
    private final a f36484a;

    /* renamed from: b, reason: collision with root package name */
    private final SigmobSdkConfigRequest.Builder f36485b;

    /* renamed from: c, reason: collision with root package name */
    private byte[] f36486c;

    public interface a extends Response.ErrorListener {
        void a(SigmobSdkConfigResponse sigmobSdkConfigResponse);
    }

    public g(String str, a aVar) {
        super(str, 1, aVar);
        this.f36484a = aVar;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        this.f36485b = a();
    }

    public static SigmobSdkConfigRequest.Builder a() {
        SigmobSdkConfigRequest.Builder builder = new SigmobSdkConfigRequest.Builder();
        ClientMetadata clientMetadata = ClientMetadata.getInstance();
        if (clientMetadata != null && clientMetadata.getDeviceLocale() != null) {
            builder.app(com.sigmob.sdk.base.network.a.b().build());
            builder.user(com.sigmob.sdk.base.network.a.c().build());
            builder.privacy(com.sigmob.sdk.base.network.a.d().build());
            DeviceContext deviceContextB = com.sigmob.sdk.b.b();
            builder.network(ModelBuilderCreator.createNetwork(deviceContextB).build());
            builder.device(ModelBuilderCreator.createDevice(deviceContextB).did(ModelBuilderCreator.createDeviceId(deviceContextB).build()).build());
        }
        return builder;
    }

    public a b() {
        return this.f36484a;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f36486c;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/octet-stream";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        try {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        } catch (NoSuchMethodError unused) {
            headers.put("e", "1");
        }
        SigmobSdkConfigRequest sigmobSdkConfigRequestBuild = this.f36485b.build();
        try {
            byte[] bArrEncode = sigmobSdkConfigRequestBuild.encode();
            this.f36486c = bArrEncode;
            this.f36486c = c.b(bArrEncode);
            headers.put("cp", "1");
        } catch (Throwable unused2) {
            headers.remove("cp");
            this.f36486c = sigmobSdkConfigRequestBuild.encode();
        }
        try {
            this.f36486c = AESUtil.Encrypt(this.f36486c, "KGpfzbYsn4T9Jyuq");
        } catch (Exception e2) {
            e2.printStackTrace();
            headers.remove("e");
            headers.remove("agn");
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<SigmobSdkConfigResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            if (networkResponse.data == null) {
                return Response.error(new ParseError(networkResponse));
            }
            return Response.success(SigmobSdkConfigResponse.ADAPTER.decode((networkResponse.headers.containsKey("cp") && "1".equals(networkResponse.headers.get("cp"))) ? c.a(networkResponse.data) : networkResponse.data), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return Response.error(new ParseError(th));
        }
    }

    @Override // com.czhj.volley.Request
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(SigmobSdkConfigResponse sigmobSdkConfigResponse) {
        this.f36484a.a(sigmobSdkConfigResponse);
    }
}
