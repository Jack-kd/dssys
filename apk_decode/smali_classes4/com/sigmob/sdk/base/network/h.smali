.class public Lcom/sigmob/sdk/base/network/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "h"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .locals 6

    .line 1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    return-void
.end method

.method public static a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V
    .locals 6

    .line 2
    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getEvent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sigmob/sdk/base/network/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTracking: event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/sigmob/sdk/base/utils/k;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "companion_click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "click"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string v3, "js"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "native"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendTracking: source = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", event = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/czhj/sdk/logger/SigmobLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getMessageType()Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    move-result-object v0

    sget-object v1, Lcom/czhj/sdk/common/track/AdTracker$MessageType;->TRACKING_URL:Lcom/czhj/sdk/common/track/AdTracker$MessageType;

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/czhj/sdk/common/track/AdTracker;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sigmob/sdk/Sigmob;->getInstance()Lcom/sigmob/sdk/Sigmob;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/Sigmob;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    if-nez p1, :cond_5

    invoke-virtual {v1, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    invoke-virtual {v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->getMacroMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/czhj/sdk/common/track/AdTracker;->setUrl(Ljava/lang/String;)V

    new-instance v1, Lcom/sigmob/sdk/base/network/h$1;

    invoke-direct {v1, p4, v0, p1, p5}, Lcom/sigmob/sdk/base/network/h$1;-><init>(ZLjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/czhj/sdk/common/track/TrackManager$Listener;)V

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/czhj/sdk/common/track/TrackManager;->sendTracking(Lcom/czhj/sdk/common/track/AdTracker;Lcom/czhj/sdk/common/track/BaseMacroCommon;ZZLcom/czhj/sdk/common/track/TrackManager$Listener;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .locals 4

    .line 4
    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/ai;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v1

    const-string v2, "_PLAYFIRSTFRAME_"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)I
    .locals 5

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdTracker(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/common/ai;

    if-eqz p2, :cond_2

    const-string v2, "js"

    invoke-virtual {v0, v2}, Lcom/czhj/sdk/common/track/AdTracker;->setSource(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    const-string v3, "_PLAYFIRSTFRAME_"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/czhj/sdk/common/track/AdTracker;Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 p0, -0x2

    return p0

    :cond_5
    :goto_2
    const/4 p0, -0x1

    return p0
.end method
