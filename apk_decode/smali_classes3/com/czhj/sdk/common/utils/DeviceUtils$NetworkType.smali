.class public final enum Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/utils/DeviceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum ETHERNET:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum MOBILE:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum MOBILE_2G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum MOBILE_3G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum MOBILE_4G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum MOBILE_5G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum UNKNOWN:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

.field public static final enum WIFI:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->UNKNOWN:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v1, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const/16 v2, 0x65

    const-string v3, "ETHERNET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->ETHERNET:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v2, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const/16 v3, 0x64

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->WIFI:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v3, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v5, "MOBILE"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v4}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->MOBILE:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v4, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v5, "MOBILE_2G"

    const/4 v8, 0x4

    invoke-direct {v4, v5, v8, v6}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->MOBILE_2G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v5, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v6, "MOBILE_3G"

    const/4 v9, 0x5

    invoke-direct {v5, v6, v9, v7}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->MOBILE_3G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v6, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v7, "MOBILE_4G"

    const/4 v10, 0x6

    invoke-direct {v6, v7, v10, v8}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->MOBILE_4G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    new-instance v7, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    const-string v8, "MOBILE_5G"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->MOBILE_5G:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    filled-new-array/range {v0 .. v7}, [Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->$VALUES:[Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->mId:I

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;I)Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;
    .locals 0

    invoke-static {p0, p1}, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->b(Landroid/content/Context;I)Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;I)Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 p0, 0x9

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->UNKNOWN:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->ETHERNET:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->WIFI:Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/czhj/sdk/common/utils/DeviceUtils;->getDataNetworkType(Landroid/content/Context;)Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;
    .locals 1

    const-class v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->$VALUES:[Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    invoke-virtual {v0}, [Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/czhj/sdk/common/utils/DeviceUtils$NetworkType;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
