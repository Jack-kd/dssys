.class Lcom/sigmob/sdk/mraid/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid/h;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid/h;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVpaidEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMessage args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/v;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/sigmob/sdk/mraid/t;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sigmob/sdk/mraid/t;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move p1, v3

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "muted"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v2, "frame"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x6

    goto :goto_2

    :sswitch_3
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x5

    goto :goto_2

    :sswitch_4
    const-string v2, "seek"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v2, "play"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x3

    goto :goto_2

    :sswitch_6
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 p1, 0x2

    goto :goto_2

    :sswitch_7
    const-string v2, "assetURL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    move p1, v4

    goto :goto_2

    :sswitch_8
    const-string v2, "replay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 p1, 0x0

    :goto_2
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->d(Lorg/json/JSONObject;)V

    return-void

    :pswitch_1
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->f(Lorg/json/JSONObject;)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->h(Lorg/json/JSONObject;)V

    return-void

    :pswitch_3
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->e(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/t;->b()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_4
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->g(Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->b(Lorg/json/JSONObject;)V

    return-void

    :pswitch_6
    new-instance p1, Lcom/sigmob/sdk/mraid/t;

    invoke-direct {p1, v0}, Lcom/sigmob/sdk/mraid/t;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sigmob/sdk/mraid/h$1$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/mraid/h$1$1;-><init>(Lcom/sigmob/sdk/mraid/h$1;)V

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/mraid/t;->a(Lcom/sigmob/sdk/mraid/u;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/v;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/mraid/t;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/t;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_7
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->a(Lorg/json/JSONObject;)V

    return-void

    :pswitch_8
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->c(Lorg/json/JSONObject;)V

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleVpaidEvent uniqueId is null:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b3b819 -> :sswitch_8
        -0x163ec7a1 -> :sswitch_7
        0x316510 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x35ce78 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x5d2a96d -> :sswitch_2
        0x636f16b -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const-string p1, "uniqueId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/mraid/n;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/h;->a(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/mraid/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    const-string p1, "uniqueId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/mraid/n;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid/h;->e(Lcom/sigmob/sdk/mraid/h;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMessage subEvent data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMotionViewEvent uniqueId is null:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

    instance-of v2, v1, Lcom/sigmob/sdk/mraid2/h;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sigmob/sdk/mraid2/h;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "init_sensitivity_raw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    const-string p1, ""

    const-string v2, "type"

    packed-switch v4, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/h;->b()V

    :cond_5
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sensitivity"

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "shakeTriggerType"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "widgetIntervalTime"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "shakeTimeThreshold"

    invoke-virtual {p2, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    new-instance v3, Lcom/sigmob/sdk/mraid2/h;

    invoke-direct {v3, v0, p1}, Lcom/sigmob/sdk/mraid2/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/h$1$2;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/h$1$2;-><init>(Lcom/sigmob/sdk/mraid/h$1;)V

    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    new-instance p1, Lcom/sigmob/sdk/base/models/SensorEntity;

    invoke-direct {p1, v1, v2, v4, p2}, Lcom/sigmob/sdk/base/models/SensorEntity;-><init>(IIII)V

    invoke-virtual {v3, p1}, Lcom/sigmob/sdk/mraid2/h;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    invoke-virtual {v3}, Lcom/sigmob/sdk/mraid/o;->d()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sensitivity_raw"

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    new-instance v1, Lcom/sigmob/sdk/mraid2/h;

    invoke-direct {v1, v0, p1}, Lcom/sigmob/sdk/mraid2/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/h$1$3;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/h$1$3;-><init>(Lcom/sigmob/sdk/mraid/h$1;)V

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/o;->b(I)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/o;->d()V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e26c6a7 -> :sswitch_2
        0x316510 -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotionViewEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMessage args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMotionViewEvent uniqueId is null:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/sigmob/sdk/mraid/l;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/sigmob/sdk/mraid/l;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "hidden"

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "shakeTriggerType"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "sensitivity_raw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x8

    goto :goto_1

    :sswitch_2
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "sensitivity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v2, "frame"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_8
    const-string v2, "widgetIntervalTime"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_9
    const-string v2, "shakeTimeThreshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v1, :cond_d

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->c(I)V

    return-void

    :pswitch_1
    if-eqz v1, :cond_d

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->b(I)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/l;->b()V

    :cond_c
    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    if-eqz v1, :cond_d

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->a(I)V

    return-void

    :pswitch_4
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/o;->d()V

    return-void

    :pswitch_5
    if-eqz v1, :cond_d

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/l;->a(Lorg/json/JSONObject;)V

    return-void

    :pswitch_6
    const-string p1, "type"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Lcom/sigmob/sdk/mraid/l;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid/h;->d(Lcom/sigmob/sdk/mraid/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-direct {p2, v1, v0, p1, v2}, Lcom/sigmob/sdk/mraid/l;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance p1, Lcom/sigmob/sdk/mraid/h$1$4;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid/h$1$4;-><init>(Lcom/sigmob/sdk/mraid/h$1;)V

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid/h$1;->a:Lcom/sigmob/sdk/mraid/h;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid/h;->b(Lcom/sigmob/sdk/mraid/h;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_7
    if-eqz v1, :cond_d

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/l;->a(Z)V

    return-void

    :pswitch_8
    if-eqz v1, :cond_d

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->d(I)V

    return-void

    :pswitch_9
    if-eqz v1, :cond_d

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->e(I)V

    :cond_d
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d717d48 -> :sswitch_9
        -0x6a28d66a -> :sswitch_8
        -0x48916256 -> :sswitch_7
        0x316510 -> :sswitch_6
        0x5d2a96d -> :sswitch_5
        0x68ac462 -> :sswitch_4
        0x21a41e9f -> :sswitch_3
        0x5cd39ffa -> :sswitch_2
        0x5f529e88 -> :sswitch_1
        0x5f60962c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
