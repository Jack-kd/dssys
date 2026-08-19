.class synthetic Lcom/czhj/sdk/common/track/AdTracker$5;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/sdk/common/track/AdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->values()[Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/czhj/sdk/common/track/AdTracker$5;->$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType:[I

    :try_start_0
    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->QUARTILE_EVENT:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/czhj/sdk/common/track/AdTracker$5;->$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType:[I

    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TOBID_TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/czhj/sdk/common/track/AdTracker$5;->$SwitchMap$com$czhj$sdk$common$track$AdTracker$MessageType:[I

    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
