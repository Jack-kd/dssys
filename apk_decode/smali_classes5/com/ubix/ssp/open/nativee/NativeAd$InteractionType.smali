.class public final enum Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/nativee/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InteractionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

.field public static final enum INTERACTION_TYPE_CLICK:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

.field public static final enum INTERACTION_TYPE_SHAKE:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

.field public static final enum INTERACTION_TYPE_SLIDE:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    const-string v1, "INTERACTION_TYPE_CLICK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->INTERACTION_TYPE_CLICK:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    new-instance v1, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    const-string v2, "INTERACTION_TYPE_SHAKE"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->INTERACTION_TYPE_SHAKE:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    new-instance v2, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    const/4 v3, 0x2

    const/16 v4, 0xb

    const-string v5, "INTERACTION_TYPE_SLIDE"

    invoke-direct {v2, v5, v3, v4}, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->INTERACTION_TYPE_SLIDE:Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    filled-new-array {v0, v1, v2}, [Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->$VALUES:[Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

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

    iput p3, p0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;
    .locals 1

    const-class v0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    return-object p0
.end method

.method public static values()[Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->$VALUES:[Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    invoke-virtual {v0}, [Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/nativee/NativeAd$InteractionType;->value:I

    return v0
.end method
