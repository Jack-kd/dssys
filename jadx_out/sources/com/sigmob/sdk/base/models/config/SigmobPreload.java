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
public final class SigmobPreload extends AndroidMessage<SigmobPreload, Builder> {
    public static final ProtoAdapter<SigmobPreload> ADAPTER;
    public static final Parcelable.Creator<SigmobPreload> CREATOR;
    public static final String DEFAULT_P_ID = "";
    public static final String DEFAULT_P_MD5 = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String p_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String p_md5;

    public static final class Builder extends Message.Builder<SigmobPreload, Builder> {
        public String p_id;
        public String p_md5;

        public Builder p_id(String str) {
            this.p_id = str;
            return this;
        }

        public Builder p_md5(String str) {
            this.p_md5 = str;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public SigmobPreload build() {
            return new SigmobPreload(this.p_id, this.p_md5, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_SigmobPreload extends ProtoAdapter<SigmobPreload> {
        public ProtoAdapter_SigmobPreload() {
            super(FieldEncoding.LENGTH_DELIMITED, SigmobPreload.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public SigmobPreload decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.p_id(ProtoAdapter.STRING.decode(protoReader));
                } else if (iNextTag != 2) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.p_md5(ProtoAdapter.STRING.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, SigmobPreload sigmobPreload) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 1, sigmobPreload.p_id);
            protoAdapter.encodeWithTag(protoWriter, 2, sigmobPreload.p_md5);
            protoWriter.writeBytes(sigmobPreload.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(SigmobPreload sigmobPreload) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            return protoAdapter.encodedSizeWithTag(1, sigmobPreload.p_id) + protoAdapter.encodedSizeWithTag(2, sigmobPreload.p_md5) + sigmobPreload.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public SigmobPreload redact(SigmobPreload sigmobPreload) {
            Builder builderNewBuilder = sigmobPreload.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_SigmobPreload protoAdapter_SigmobPreload = new ProtoAdapter_SigmobPreload();
        ADAPTER = protoAdapter_SigmobPreload;
        CREATOR = AndroidMessage.newCreator(protoAdapter_SigmobPreload);
    }

    public SigmobPreload(String str, String str2) {
        this(str, str2, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SigmobPreload)) {
            return false;
        }
        SigmobPreload sigmobPreload = (SigmobPreload) obj;
        return unknownFields().equals(sigmobPreload.unknownFields()) && Internal.equals(this.p_id, sigmobPreload.p_id) && Internal.equals(this.p_md5, sigmobPreload.p_md5);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.p_id;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.p_md5;
        int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.p_id != null) {
            sb.append(", p_id=");
            sb.append(this.p_id);
        }
        if (this.p_md5 != null) {
            sb.append(", p_md5=");
            sb.append(this.p_md5);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "SigmobPreload{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public SigmobPreload(String str, String str2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.p_id = str;
        this.p_md5 = str2;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.p_id = this.p_id;
        builder.p_md5 = this.p_md5;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
