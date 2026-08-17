.class public final Lcom/czhj/sdk/common/models/Privacy;
.super Lcom/czhj/wire/AndroidMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/czhj/sdk/common/models/Privacy$ProtoAdapter_Privacy;,
        Lcom/czhj/sdk/common/models/Privacy$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/czhj/wire/AndroidMessage<",
        "Lcom/czhj/sdk/common/models/Privacy;",
        "Lcom/czhj/sdk/common/models/Privacy$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/czhj/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/czhj/wire/ProtoAdapter<",
            "Lcom/czhj/sdk/common/models/Privacy;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/czhj/sdk/common/models/Privacy;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AGE:Ljava/lang/Integer;

.field public static final DEFAULT_ALLOW_ANDROID_ID:Ljava/lang/Boolean;

.field public static final DEFAULT_ALLOW_CARRIER_CODE:Ljava/lang/Boolean;

.field public static final DEFAULT_ALLOW_GEO:Ljava/lang/Boolean;

.field public static final DEFAULT_ALLOW_IMEI:Ljava/lang/Boolean;

.field public static final DEFAULT_ALLOW_INSTALLED_APPS:Ljava/lang/Boolean;

.field public static final DEFAULT_ALLOW_OAID:Ljava/lang/Boolean;

.field public static final DEFAULT_CHILD_PROTECTION:Ljava/lang/Integer;

.field public static final DEFAULT_GDPR_CONSENT:Ljava/lang/Integer;

.field private static final serialVersionUID:J


# instance fields
.field public final age:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x3
    .end annotation
.end field

.field public final allow_android_id:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x7
    .end annotation
.end field

.field public final allow_carrier_code:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x9
    .end annotation
.end field

.field public final allow_geo:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x4
    .end annotation
.end field

.field public final allow_imei:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x5
    .end annotation
.end field

.field public final allow_installed_apps:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x8
    .end annotation
.end field

.field public final allow_oaid:Ljava/lang/Boolean;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        tag = 0x6
    .end annotation
.end field

.field public final child_protection:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x2
    .end annotation
.end field

.field public final gdpr_consent:Ljava/lang/Integer;
    .annotation runtime Lcom/czhj/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT32"
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/czhj/sdk/common/models/Privacy$ProtoAdapter_Privacy;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Privacy$ProtoAdapter_Privacy;-><init>()V

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-static {v0}, Lcom/czhj/wire/AndroidMessage;->newCreator(Lcom/czhj/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_GDPR_CONSENT:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_CHILD_PROTECTION:Ljava/lang/Integer;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_AGE:Ljava/lang/Integer;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_GEO:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_IMEI:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_OAID:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_ANDROID_ID:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_INSTALLED_APPS:Ljava/lang/Boolean;

    sput-object v0, Lcom/czhj/sdk/common/models/Privacy;->DEFAULT_ALLOW_CARRIER_CODE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 11

    .line 1
    sget-object v10, Lcom/czhj/wire/okio/ByteString;->EMPTY:Lcom/czhj/wire/okio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/czhj/sdk/common/models/Privacy;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/czhj/wire/okio/ByteString;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/czhj/sdk/common/models/Privacy;->ADAPTER:Lcom/czhj/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/czhj/wire/AndroidMessage;-><init>(Lcom/czhj/wire/ProtoAdapter;Lcom/czhj/wire/okio/ByteString;)V

    iput-object p1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/czhj/sdk/common/models/Privacy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/czhj/sdk/common/models/Privacy;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/czhj/wire/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lcom/czhj/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/czhj/wire/okio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    iput v0, p0, Lcom/czhj/wire/Message;->hashCode:I

    :cond_9
    return v0
.end method

.method public newBuilder()Lcom/czhj/sdk/common/models/Privacy$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/czhj/sdk/common/models/Privacy$Builder;

    invoke-direct {v0}, Lcom/czhj/sdk/common/models/Privacy$Builder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->gdpr_consent:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->child_protection:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->age:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_geo:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_imei:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_oaid:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_android_id:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_installed_apps:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/czhj/sdk/common/models/Privacy$Builder;->allow_carrier_code:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/czhj/wire/Message;->unknownFields()Lcom/czhj/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/czhj/wire/Message$Builder;->addUnknownFields(Lcom/czhj/wire/okio/ByteString;)Lcom/czhj/wire/Message$Builder;

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lcom/czhj/wire/Message$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/czhj/sdk/common/models/Privacy;->newBuilder()Lcom/czhj/sdk/common/models/Privacy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v1, ", gdpr_consent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->gdpr_consent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, ", child_protection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->child_protection:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->age:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const-string v1, ", allow_geo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_geo:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    const-string v1, ", allow_imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_imei:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    const-string v1, ", allow_oaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_oaid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    const-string v1, ", allow_android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_android_id:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    const-string v1, ", allow_installed_apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_installed_apps:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    const-string v1, ", allow_carrier_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/czhj/sdk/common/models/Privacy;->allow_carrier_code:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v1, 0x2

    const-string v2, "Privacy{"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
