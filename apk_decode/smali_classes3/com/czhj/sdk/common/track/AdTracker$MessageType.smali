.class public final enum Lcom/czhj/sdk/common/track/AdTracker$MessageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/track/AdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/sdk/common/track/AdTracker$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/sdk/common/track/AdTracker$MessageType;

.field public static final enum QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

.field public static final enum TOBID_TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

.field public static final enum TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    const-string v1, "TRACKING_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/czhj/sdk/common/track/AdTracker$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    new-instance v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    const-string v2, "QUARTILE_EVENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/czhj/sdk/common/track/AdTracker$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    new-instance v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    const-string v3, "TOBID_TRACKING_URL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/czhj/sdk/common/track/AdTracker$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TOBID_TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    filled-new-array {v0, v1, v2}, [Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    move-result-object v0

    sput-object v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->$VALUES:[Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/sdk/common/track/AdTracker$MessageType;
    .locals 1

    const-class v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    return-object p0
.end method

.method public static values()[Lcom/czhj/sdk/common/track/AdTracker$MessageType;
    .locals 1

    sget-object v0, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->$VALUES:[Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v0}, [Lcom/czhj/sdk/common/track/AdTracker$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    return-object v0
.end method
