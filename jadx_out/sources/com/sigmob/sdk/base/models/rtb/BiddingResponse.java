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
public final class BiddingResponse extends AndroidMessage<BiddingResponse, Builder> {
    public static final ProtoAdapter<BiddingResponse> ADAPTER;
    public static final Parcelable.Creator<BiddingResponse> CREATOR;
    public static final String DEFAULT_CURRENCY = "";
    public static final Integer DEFAULT_ECPM;
    public static final String DEFAULT_LOSE_URL = "";
    public static final Integer DEFAULT_PRICE_FOR_SSP;
    public static final String DEFAULT_PRICE_FOR_SSP_ENC = "";
    public static final String DEFAULT_WIN_URL = "";
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 6)
    public final String currency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 3)
    public final Integer ecpm;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 2)
    public final String lose_url;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT32", tag = 4)
    public final Integer price_for_ssp;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 5)
    public final String price_for_ssp_enc;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", tag = 1)
    public final String win_url;

    public static final class Builder extends Message.Builder<BiddingResponse, Builder> {
        public String currency;
        public Integer ecpm;
        public String lose_url;
        public Integer price_for_ssp;
        public String price_for_ssp_enc;
        public String win_url;

        public Builder currency(String str) {
            this.currency = str;
            return this;
        }

        public Builder ecpm(Integer num) {
            this.ecpm = num;
            return this;
        }

        public Builder lose_url(String str) {
            this.lose_url = str;
            return this;
        }

        public Builder price_for_ssp(Integer num) {
            this.price_for_ssp = num;
            return this;
        }

        public Builder price_for_ssp_enc(String str) {
            this.price_for_ssp_enc = str;
            return this;
        }

        public Builder win_url(String str) {
            this.win_url = str;
            return this;
        }

        @Override // com.czhj.wire.Message.Builder
        public BiddingResponse build() {
            return new BiddingResponse(this.win_url, this.lose_url, this.ecpm, this.price_for_ssp, this.price_for_ssp_enc, this.currency, super.buildUnknownFields());
        }
    }

    public static final class ProtoAdapter_BiddingResponse extends ProtoAdapter<BiddingResponse> {
        public ProtoAdapter_BiddingResponse() {
            super(FieldEncoding.LENGTH_DELIMITED, BiddingResponse.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.czhj.wire.ProtoAdapter
        public BiddingResponse decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long jBeginMessage = protoReader.beginMessage();
            while (true) {
                int iNextTag = protoReader.nextTag();
                if (iNextTag == -1) {
                    protoReader.endMessage(jBeginMessage);
                    return builder.build();
                }
                switch (iNextTag) {
                    case 1:
                        builder.win_url(ProtoAdapter.STRING.decode(protoReader));
                        break;
                    case 2:
                        builder.lose_url(ProtoAdapter.STRING.decode(protoReader));
                        break;
                    case 3:
                        builder.ecpm(ProtoAdapter.UINT32.decode(protoReader));
                        break;
                    case 4:
                        builder.price_for_ssp(ProtoAdapter.UINT32.decode(protoReader));
                        break;
                    case 5:
                        builder.price_for_ssp_enc(ProtoAdapter.STRING.decode(protoReader));
                        break;
                    case 6:
                        builder.currency(ProtoAdapter.STRING.decode(protoReader));
                        break;
                    default:
                        FieldEncoding fieldEncodingPeekFieldEncoding = protoReader.peekFieldEncoding();
                        builder.addUnknownField(iNextTag, fieldEncodingPeekFieldEncoding, fieldEncodingPeekFieldEncoding.rawProtoAdapter().decode(protoReader));
                        break;
                }
            }
        }

        @Override // com.czhj.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, BiddingResponse biddingResponse) throws IOException {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            protoAdapter.encodeWithTag(protoWriter, 1, biddingResponse.win_url);
            protoAdapter.encodeWithTag(protoWriter, 2, biddingResponse.lose_url);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.UINT32;
            protoAdapter2.encodeWithTag(protoWriter, 3, biddingResponse.ecpm);
            protoAdapter2.encodeWithTag(protoWriter, 4, biddingResponse.price_for_ssp);
            protoAdapter.encodeWithTag(protoWriter, 5, biddingResponse.price_for_ssp_enc);
            protoAdapter.encodeWithTag(protoWriter, 6, biddingResponse.currency);
            protoWriter.writeBytes(biddingResponse.unknownFields());
        }

        @Override // com.czhj.wire.ProtoAdapter
        public int encodedSize(BiddingResponse biddingResponse) {
            ProtoAdapter<String> protoAdapter = ProtoAdapter.STRING;
            int iEncodedSizeWithTag = protoAdapter.encodedSizeWithTag(1, biddingResponse.win_url) + protoAdapter.encodedSizeWithTag(2, biddingResponse.lose_url);
            ProtoAdapter<Integer> protoAdapter2 = ProtoAdapter.UINT32;
            return iEncodedSizeWithTag + protoAdapter2.encodedSizeWithTag(3, biddingResponse.ecpm) + protoAdapter2.encodedSizeWithTag(4, biddingResponse.price_for_ssp) + protoAdapter.encodedSizeWithTag(5, biddingResponse.price_for_ssp_enc) + protoAdapter.encodedSizeWithTag(6, biddingResponse.currency) + biddingResponse.unknownFields().size();
        }

        @Override // com.czhj.wire.ProtoAdapter
        public BiddingResponse redact(BiddingResponse biddingResponse) {
            Builder builderNewBuilder = biddingResponse.newBuilder();
            builderNewBuilder.clearUnknownFields();
            return builderNewBuilder.build();
        }
    }

    static {
        ProtoAdapter_BiddingResponse protoAdapter_BiddingResponse = new ProtoAdapter_BiddingResponse();
        ADAPTER = protoAdapter_BiddingResponse;
        CREATOR = AndroidMessage.newCreator(protoAdapter_BiddingResponse);
        DEFAULT_ECPM = 0;
        DEFAULT_PRICE_FOR_SSP = 0;
    }

    public BiddingResponse(String str, String str2, Integer num, Integer num2, String str3, String str4) {
        this(str, str2, num, num2, str3, str4, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BiddingResponse)) {
            return false;
        }
        BiddingResponse biddingResponse = (BiddingResponse) obj;
        return unknownFields().equals(biddingResponse.unknownFields()) && Internal.equals(this.win_url, biddingResponse.win_url) && Internal.equals(this.lose_url, biddingResponse.lose_url) && Internal.equals(this.ecpm, biddingResponse.ecpm) && Internal.equals(this.price_for_ssp, biddingResponse.price_for_ssp) && Internal.equals(this.price_for_ssp_enc, biddingResponse.price_for_ssp_enc) && Internal.equals(this.currency, biddingResponse.currency);
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        String str = this.win_url;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 37;
        String str2 = this.lose_url;
        int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 37;
        Integer num = this.ecpm;
        int iHashCode4 = (iHashCode3 + (num != null ? num.hashCode() : 0)) * 37;
        Integer num2 = this.price_for_ssp;
        int iHashCode5 = (iHashCode4 + (num2 != null ? num2.hashCode() : 0)) * 37;
        String str3 = this.price_for_ssp_enc;
        int iHashCode6 = (iHashCode5 + (str3 != null ? str3.hashCode() : 0)) * 37;
        String str4 = this.currency;
        int iHashCode7 = iHashCode6 + (str4 != null ? str4.hashCode() : 0);
        this.hashCode = iHashCode7;
        return iHashCode7;
    }

    @Override // com.czhj.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.win_url != null) {
            sb.append(", win_url=");
            sb.append(this.win_url);
        }
        if (this.lose_url != null) {
            sb.append(", lose_url=");
            sb.append(this.lose_url);
        }
        if (this.ecpm != null) {
            sb.append(", ecpm=");
            sb.append(this.ecpm);
        }
        if (this.price_for_ssp != null) {
            sb.append(", price_for_ssp=");
            sb.append(this.price_for_ssp);
        }
        if (this.price_for_ssp_enc != null) {
            sb.append(", price_for_ssp_enc=");
            sb.append(this.price_for_ssp_enc);
        }
        if (this.currency != null) {
            sb.append(", currency=");
            sb.append(this.currency);
        }
        StringBuilder sbReplace = sb.replace(0, 2, "BiddingResponse{");
        sbReplace.append('}');
        return sbReplace.toString();
    }

    public BiddingResponse(String str, String str2, Integer num, Integer num2, String str3, String str4, ByteString byteString) {
        super(ADAPTER, byteString);
        this.win_url = str;
        this.lose_url = str2;
        this.ecpm = num;
        this.price_for_ssp = num2;
        this.price_for_ssp_enc = str3;
        this.currency = str4;
    }

    @Override // com.czhj.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.win_url = this.win_url;
        builder.lose_url = this.lose_url;
        builder.ecpm = this.ecpm;
        builder.price_for_ssp = this.price_for_ssp;
        builder.price_for_ssp_enc = this.price_for_ssp_enc;
        builder.currency = this.currency;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}
