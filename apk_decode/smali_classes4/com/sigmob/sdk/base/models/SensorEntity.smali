.class public Lcom/sigmob/sdk/base/models/SensorEntity;
.super Ljava/lang/Object;


# instance fields
.field public level:I

.field public shakeTimeThreshold:I

.field public shakeTriggerType:I

.field public widgetIntervalTime:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/base/models/SensorEntity;->level:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sigmob/sdk/base/models/SensorEntity;->level:I

    iput p2, p0, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTriggerType:I

    iput p3, p0, Lcom/sigmob/sdk/base/models/SensorEntity;->widgetIntervalTime:I

    iput p4, p0, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTimeThreshold:I

    return-void
.end method

.method public static format(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/SensorEntity;
    .locals 2

    new-instance v0, Lcom/sigmob/sdk/base/models/SensorEntity;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/models/SensorEntity;-><init>()V

    invoke-static {p0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSensitivity()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/SensorEntity;->level:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getShakeTriggerType()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTriggerType:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getWidgetIntervalTime()I

    move-result v1

    iput v1, v0, Lcom/sigmob/sdk/base/models/SensorEntity;->widgetIntervalTime:I

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getShakeTimeThreshold()I

    move-result p0

    iput p0, v0, Lcom/sigmob/sdk/base/models/SensorEntity;->shakeTimeThreshold:I

    :cond_0
    return-object v0
.end method
