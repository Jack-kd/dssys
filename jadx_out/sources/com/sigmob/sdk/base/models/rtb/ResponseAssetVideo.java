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
public final class ResponseAssetVideo extends AndroidMessage<ResponseAssetVideo, Builder> {
    public static final ProtoAdapter<ResponseAssetVideo> ADAPTER;
    public static final Parcelable.Creator<ResponseAssetVideo> CREATOR;
    public static final Integer DEFAULT_DURATION;
    public static final Integer DEFAULT_H;
    public static final String DEFAULT_URL = "";
    public static final Integer DEFAULT_W;
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer duration;

    /* renamed from: h, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer f36324h;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String url;

    /* renamed from: w, reason: collision with root package name */
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 2)
    public final Integer f36325w;

    public static final class Builder extends Message.Builder<ResponseAssetVideo, Builder> {
        public String url = "";

        /* renamed from: w, reason: collision with root package name */
        public Integer f36327w = ResponseAssetVideo.DEFAULT_W;

        /* renamed from: h, reason: collision with root package name */
        public Integer f36326h = ResponseAssetVideo.DEFAULT_H;
        public Integer duration = ResponseAssetVideo.DEFAULT_DURATION;

        public Builder duration(Integer num) {
            this.duration = num;
            return this;
        }

        public Builder h(Integer num) {
            this.f36326h = num;
            return this;
        }

        public Builder url(String str) {
            this.url = str;
            return this;
        }

        public Builder w(Integer num) {
            this.f36327w = num;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public ResponseAssetVideo build() {
            return new ResponseAssetVideo(this.url, this.f36327w, this.f36326h, this.duration, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_ResponseAssetVideo extends ProtoAdapter<ResponseAssetVideo> {
        public ProtoAdapter_ResponseAssetVideo() {
            super(FieldEncoding.LENGTH_DELIMITED, ResponseAssetVideo.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetVideo decode(ProtoReader protoReader) throws IOException {
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
                } else if (iNextTag == 3) {
                    builder.h(ProtoAdapter.UINT32.decode(protoReader));
                } else if (iNextTag != 4) {
                    FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.duration(ProtoAdapter.UINT32.decode(protoReader));
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, ResponseAssetVideo responseAssetVideo) throws IOException {
            ProtoAdapter.STRING.encodeWithTag(protoWriter, 1, responseAssetVideo.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            protoAdapter.encodeWithTag(protoWriter, 2, responseAssetVideo.f36325w);
            protoAdapter.encodeWithTag(protoWriter, 3, responseAssetVideo.f36324h);
            protoAdapter.encodeWithTag(protoWriter, 4, responseAssetVideo.duration);
            protoWriter.writeBytes(responseAssetVideo.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(ResponseAssetVideo responseAssetVideo) {
            int iEncodedSizeWithTag = ProtoAdapter.STRING.encodedSizeWithTag(1, responseAssetVideo.url);
            ProtoAdapter<Integer> protoAdapter = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag + protoAdapter.encodedSizeWithTag(2, responseAssetVideo.f36325w) + protoAdapter.encodedSizeWithTag(3, responseAssetVideo.f36324h) + protoAdapter.encodedSizeWithTag(4, responseAssetVideo.duration) + responseAssetVideo.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public ResponseAssetVideo redact(ResponseAssetVideo responseAssetVideo) {
            Builder builderNewBuilder = responseAssetVideo.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_ResponseAssetVideo protoAdapter_ResponseAssetVideo = new ProtoAdapter_ResponseAssetVideo();
        ADAPTER = protoAdapter_ResponseAssetVideo;
        CREATOR = AndroidMessage.newCreator(protoAdapter_ResponseAssetVideo);
        DEFAULT_W = 0;
        DEFAULT_H = 0;
        DEFAULT_DURATION = 0;
    }

    public ResponseAssetVideo(String str, Integer num, Integer num2, Integer num3) {
        this(str, num, num2, num3, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResponseAssetVideo)) {
            return false;
        }
        ResponseAssetVideo responseAssetVideo = (ResponseAssetVideo) obj;
        return unknownFields().equals(responseAssetVideo.unknownFields()) && Internal.equals(this.url, responseAssetVideo.url) && Internal.equals(this.f36325w, responseAssetVideo.f36325w) && Internal.equals(this.f36324h, responseAssetVideo.f36324h) && Internal.equals(this.duration, responseAssetVideo.duration);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        Integer num = this.f36325w;
        int iHashCode3 = (iHashCode2 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.f36324h;
        int iHashCode4 = (iHashCode3 + (num2 != null ? num2.hashCode() : 0)) * 37;
        Integer num3 = this.duration;
        int iHashCode5 = iHashCode4 + (num3 != null ? num3.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.url != null) {
            sb.append(", url=");
            sb.append(this.url);
        }
        if (this.f36325w != null) {
            sb.append(", w=");
            sb.append(this.f36325w);
        }
        if (this.f36324h != null) {
            sb.append(", h=");
            sb.append(this.f36324h);
        }
        if (this.duration != null) {
            sb.append(", duration=");
            sb.append(this.duration);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "ResponseAssetVideo{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public ResponseAssetVideo(String str, Integer num, Integer num2, Integer num3, ByteString byteString) {
        super(ADAPTER, byteString);
        this.url = str;
        this.f36325w = num;
        this.f36324h = num2;
        this.duration = num3;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.url = this.url;
        builder.f36327w = this.f36325w;
        builder.f36326h = this.f36324h;
        builder.duration = this.duration;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
