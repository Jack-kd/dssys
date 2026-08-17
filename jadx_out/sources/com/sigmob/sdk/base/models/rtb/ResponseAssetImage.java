package com.sigmob.sdk.base.models.rtb;

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
public final class ResponseAssetImage extends AndroidMessage<ResponseAssetImage, Builder> {
    public static final ProtoAdapter<ResponseAssetImage> ADAPTER;
    public static final Parcelable.Creator<ResponseAssetImage> CREATOR;
    public static final Integer DEFAULT_H;
    public static final String DEFAULT_URL = "";
    public static final Integer DEFAULT_W;
    private static final long serialVersionUID = 0;

    /* renamed from: h, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer f36320h;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String url;

    /* renamed from: w, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer f36321w;

    public static final class Builder extends Message.Builder<ResponseAssetImage, Builder> {
        public String url = "";

        /* renamed from: w, reason: collision with root package name */
        public Integer f36323w = ResponseAssetImage.DEFAULT_W;

        /* renamed from: h, reason: collision with root package name */
        public Integer f36322h = ResponseAssetImage.DEFAULT_H;

        public Builder h(Integer num) {
            this.f36322h = num;
            return this;
        }

        public Builder url(String str) {
            this.url = str;
            return this;
        }

        public Builder w(Integer num) {
            this.f36323w = num;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ResponseAssetImage build() {
            return new ResponseAssetImage(this.url, this.f36323w, this.f36322h, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_ResponseAssetImage extends ProtoAdapter<ResponseAssetImage> {
        public ProtoAdapter_ResponseAssetImage() {
            super(FieldEncoding.LENGTH_DELIMITED, ResponseAssetImage.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetImage decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                if (iNextTag == 1) {
                    builder.url(ProtoAdapter.STRING.decode(protoReader));
                } else if (iNextTag == 2) {
                    builder.w(ProtoAdapter.UINT32.decode(protoReader));
                } else if (iNextTag != 3) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.h(ProtoAdapter.UINT32.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, ResponseAssetImage responseAssetImage) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, responseAssetImage.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(protoWriter, 2, responseAssetImage.f36321w);
            protoAdapter.encodeWithTag(protoWriter, 3, responseAssetImage.f36320h);
            protoWriter.writeBytes(responseAssetImage.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ResponseAssetImage responseAssetImage) {
            int iEncodedSizeWithTag = ProtoAdapter.STRING.encodedSizeWithTag(1, responseAssetImage.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, responseAssetImage.f36321w) + protoAdapter.encodedSizeWithTag(3, responseAssetImage.f36320h) + responseAssetImage.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetImage redact(ResponseAssetImage responseAssetImage) {
            Builder builderNewBuilder = responseAssetImage.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ResponseAssetImage protoAdapter_ResponseAssetImage = new ProtoAdapter_ResponseAssetImage();
        ADAPTER = protoAdapter_ResponseAssetImage;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ResponseAssetImage);
        DEFAULT_W = 0;
        DEFAULT_H = 0;
    }

    public ResponseAssetImage(String str, Integer num, Integer num2) {
        this(str, num, num2, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponseAssetImage)) {
            return false;
        }
        ResponseAssetImage responseAssetImage = (ResponseAssetImage) obj;
        return unknownFields().equals(responseAssetImage.unknownFields()) && Internal.equals(this.url, responseAssetImage.url) && Internal.equals(this.f36321w, responseAssetImage.f36321w) && Internal.equals(this.f36320h, responseAssetImage.f36320h);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f36321w;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.f36320h;
        int iHashCode4 = iHashCode3 + (num2 != null ? num2.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.url != null) {
            sb.append(", url=");
            sb.append(this.url);
        }
        if (this.f36321w != null) {
            sb.append(", w=");
            sb.append(this.f36321w);
        }
        if (this.f36320h != null) {
            sb.append(", h=");
            sb.append(this.f36320h);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "ResponseAssetImage{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ResponseAssetImage(String str, Integer num, Integer num2, ByteString byteString) {
        super(ADAPTER, byteString);
        this.url = str;
        this.f36321w = num;
        this.f36320h = num2;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.f36323w = this.f36321w;
        builder.f36322h = this.f36320h;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
