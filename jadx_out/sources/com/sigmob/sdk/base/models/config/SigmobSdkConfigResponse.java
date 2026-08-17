package com.sigmob.sdk.base.models.config;

import android.os.Parcelable;
import com.czhj.wire.AndroidMessage;
import com.czhj.wire.FieldEncoding;
import com.czhj.wire.Message;
import com.czhj.wire.ProtoAdapter;
import com.czhj.wire.ProtoReader;
import com.czhj.wire.ProtoWriter;
import com.czhj.wire.WireField;
import com.czhj.wire.internal.Internal;
import com.czhj.wire.okio.ByteString;
import java.io.IOException;

/* loaded from: classes4.dex */
public final class SigmobSdkConfigResponse extends AndroidMessage<SigmobSdkConfigResponse, Builder> {
    public static final ProtoAdapter<SigmobSdkConfigResponse> ADAPTER;
    public static final Parcelable.Creator<SigmobSdkConfigResponse> CREATOR;
    public static final Integer DEFAULT_CODE;
    public static final String DEFAULT_ERROR_MESSAGE = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 1)
    public final Integer code;

    @WireField(adapter = "com.sigmob.sdk.base.models.config.SigmobSdkConfig#ADAPTER", tag = 3)
    public final SigmobSdkConfig config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String error_message;

    public static final class Builder extends Message.Builder<SigmobSdkConfigResponse, Builder> {
        public Integer code;
        public SigmobSdkConfig config;
        public String error_message;

        public Builder code(Integer num) {
            this.code = num;
            return this;
        }

        public Builder config(SigmobSdkConfig sigmobSdkConfig) {
            this.config = sigmobSdkConfig;
            return this;
        }

        public Builder error_message(String str) {
            this.error_message = str;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobSdkConfigResponse build() {
            return new SigmobSdkConfigResponse(this.code, this.error_message, this.config, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SigmobSdkConfigResponse extends ProtoAdapter<SigmobSdkConfigResponse> {
        public ProtoAdapter_SigmobSdkConfigResponse() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobSdkConfigResponse.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfigResponse decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.code(ProtoAdapter.UINT32.decode(protoReader));
                } else if (iNextTag == 2) {
                    builder.error_message(ProtoAdapter.STRING.decode(protoReader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.config(SigmobSdkConfig.ADAPTER.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobSdkConfigResponse sigmobSdkConfigResponse) throws IOException {
            ProtoAdapter.UINT32.encodeWithTag(protoWriter, 1, sigmobSdkConfigResponse.code);
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 2, sigmobSdkConfigResponse.error_message);
            SigmobSdkConfig.ADAPTER.encodeWithTag(protoWriter, 3, sigmobSdkConfigResponse.config);
            protoWriter.writeBytes(sigmobSdkConfigResponse.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobSdkConfigResponse sigmobSdkConfigResponse) {
            return ProtoAdapter.UINT32.encodedSizeWithTag(1, sigmobSdkConfigResponse.code) + ProtoAdapter.STRING.encodedSizeWithTag(2, sigmobSdkConfigResponse.error_message) + SigmobSdkConfig.ADAPTER.encodedSizeWithTag(3, sigmobSdkConfigResponse.config) + sigmobSdkConfigResponse.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobSdkConfigResponse redact(SigmobSdkConfigResponse sigmobSdkConfigResponse) {
            Builder builderNewBuilder = sigmobSdkConfigResponse.newBuilder();
            SigmobSdkConfig sigmobSdkConfig = builderNewBuilder.config;
            if (sigmobSdkConfig != null) {
                builderNewBuilder.config = SigmobSdkConfig.ADAPTER.redact(sigmobSdkConfig);
            }
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobSdkConfigResponse protoAdapter_SigmobSdkConfigResponse = new ProtoAdapter_SigmobSdkConfigResponse();
        ADAPTER = protoAdapter_SigmobSdkConfigResponse;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobSdkConfigResponse);
        DEFAULT_CODE = 0;
    }

    public SigmobSdkConfigResponse(Integer num, String str, SigmobSdkConfig sigmobSdkConfig) {
        this(num, str, sigmobSdkConfig, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobSdkConfigResponse)) {
            return false;
        }
        SigmobSdkConfigResponse sigmobSdkConfigResponse = (SigmobSdkConfigResponse) obj;
        return unknownFields().equals(sigmobSdkConfigResponse.unknownFields()) && Internal.equals(this.code, sigmobSdkConfigResponse.code) && Internal.equals(this.error_message, sigmobSdkConfigResponse.error_message) && Internal.equals(this.config, sigmobSdkConfigResponse.config);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Integer num = this.code;
        int iHashCode2 = (iHashCode + (num != null ? num.hashCode() : 0)) * 37;
        String str = this.error_message;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
        SigmobSdkConfig sigmobSdkConfig = this.config;
        int iHashCode4 = iHashCode3 + (sigmobSdkConfig != null ? sigmobSdkConfig.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.code != null) {
            sb.append(", code=");
            sb.append(this.code);
        }
        if (this.error_message != null) {
            sb.append(", error_message=");
            sb.append(this.error_message);
        }
        if (this.config != null) {
            sb.append(", config=");
            sb.append(this.config);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobSdkConfigResponse{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobSdkConfigResponse(Integer num, String str, SigmobSdkConfig sigmobSdkConfig, ByteString byteString) {
        super(ADAPTER, byteString);
        this.code = num;
        this.error_message = str;
        this.config = sigmobSdkConfig;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.code = this.code;
        builder.error_message = this.error_message;
        builder.config = this.config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
