.class Lcom/sigmob/sdk/mraid2/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/mraid2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/mraid2/c;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/mraid2/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid2/t;->a(Lcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/sigmob/sdk/mraid2/t;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid2/c;->getAdUnitList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v2, v3}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getVid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/h;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/h;->g()Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/h;->i(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVpaidEvent: subEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

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

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "muted"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_2
    const-string v2, "frame"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_4
    const-string v2, "seek"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "play"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "assetURL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_8
    const-string v2, "replay"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->d(Lorg/json/JSONObject;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->f(Lorg/json/JSONObject;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->h(Lorg/json/JSONObject;)V

    return-void

    :pswitch_3
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->e(Lorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/t;->b()V

    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sigmob/sdk/mraid/n;

    if-ne p2, v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return-void

    :pswitch_4
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->g(Lorg/json/JSONObject;)V

    return-void

    :pswitch_5
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->b(Lorg/json/JSONObject;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1, v0, p2}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :pswitch_7
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->a(Lorg/json/JSONObject;)V

    return-void

    :pswitch_8
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1, p2}, Lcom/sigmob/sdk/mraid/t;->c(Lorg/json/JSONObject;)V

    :cond_c
    :goto_2
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

.method public a(Lorg/json/JSONObject;)V
    .locals 28

    .line 5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uniqueId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v6, "from"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "to"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "h"

    const-string v8, "w"

    const-string v9, "y"

    const-string v10, "x"

    if-eqz v6, :cond_0

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v12

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v13

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v14

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iget-object v15, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    iget-object v15, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v10, v15}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v10

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-float v9, v9

    iget-object v15, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v9

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    iget-object v15, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iget-object v7, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    new-instance v7, Lcom/sigmob/sdk/mraid2/c$3$1;

    invoke-direct {v7, v0, v2}, Lcom/sigmob/sdk/mraid2/c$3$1;-><init>(Lcom/sigmob/sdk/mraid2/c$3;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object v2, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/mraid/n;

    const/16 p1, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3

    const-wide v18, 0x408f400000000000L    # 1000.0

    const-string v11, "height"

    const-string v15, "width"

    move-wide/from16 v21, v4

    const-string v4, "translationY"

    const-string v5, "translationX"

    move-object/from16 v23, v3

    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sigmob/sdk/mraid/n;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Lcom/sigmob/sdk/mraid2/w;

    invoke-direct {v0, v2}, Lcom/sigmob/sdk/mraid2/w;-><init>(Landroid/view/View;)V

    move-object/from16 v24, v7

    int-to-float v7, v12

    move/from16 v25, v7

    int-to-float v7, v10

    move/from16 v26, v7

    move/from16 v27, v10

    const/4 v7, 0x2

    new-array v10, v7, [F

    aput v25, v10, p1

    aput v26, v10, v16

    invoke-static {v2, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v20, v10

    int-to-float v10, v13

    move/from16 v25, v10

    int-to-float v10, v9

    move/from16 v26, v10

    new-array v10, v7, [F

    aput v25, v10, p1

    aput v26, v10, v16

    invoke-static {v2, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    filled-new-array {v14, v8}, [I

    move-result-object v10

    invoke-static {v0, v15, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move/from16 v25, v7

    filled-new-array {v6, v1}, [I

    move-result-object v7

    invoke-static {v0, v11, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v26, v0

    const/4 v7, 0x4

    new-array v0, v7, [Landroid/animation/Animator;

    aput-object v20, v0, p1

    aput-object v2, v0, v16

    aput-object v10, v0, v25

    aput-object v26, v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v11

    mul-double v10, v21, v18

    double-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_3
    move-object v0, v7

    move/from16 v27, v10

    move-object v2, v11

    :goto_2
    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->c()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v7, v23

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/mraid2/c;

    if-eqz v3, :cond_4

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v10, Lcom/sigmob/sdk/mraid2/w;

    invoke-direct {v10, v3}, Lcom/sigmob/sdk/mraid2/w;-><init>(Landroid/view/View;)V

    int-to-float v11, v12

    move/from16 v12, v27

    int-to-float v12, v12

    move-object/from16 v23, v2

    move/from16 v20, v11

    const/4 v2, 0x2

    new-array v11, v2, [F

    aput v20, v11, p1

    aput v12, v11, v16

    invoke-static {v3, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-float v11, v13

    int-to-float v9, v9

    new-array v12, v2, [F

    aput v11, v12, p1

    aput v9, v12, v16

    invoke-static {v3, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    filled-new-array {v14, v8}, [I

    move-result-object v4

    invoke-static {v10, v15, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    filled-new-array {v6, v1}, [I

    move-result-object v1

    move-object/from16 v6, v23

    invoke-static {v10, v6, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v5, v6, p1

    aput-object v3, v6, v16

    aput-object v4, v6, v2

    aput-object v1, v6, v17

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    mul-double v4, v21, v18

    double-to-long v0, v4

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_3
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/n;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/n;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/n;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/f;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid2/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/q;->c()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onTimerEvent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid2/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "pause"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "fire"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "invalidate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/q;->a()V

    return-void

    :pswitch_1
    new-instance p1, Lcom/sigmob/sdk/mraid2/q;

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->c(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/d;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/sigmob/sdk/mraid2/q;-><init>(Lcom/sigmob/sdk/mraid2/d;Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p2}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/q;->b()V

    :cond_5
    :goto_1
    return-void

    :pswitch_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/q;->c()V

    :cond_6
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->i(Lcom/sigmob/sdk/mraid2/c;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d2fcec5 -> :sswitch_3
        0x2ff636 -> :sswitch_2
        0x316510 -> :sswitch_1
        0x65825f6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/n;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->k(Lcom/sigmob/sdk/mraid2/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/mraid2/c;

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/mraid2/t;->b(Lcom/sigmob/sdk/mraid2/c;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onWebViewEvent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid2/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "frame"

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move p1, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "loadURLByPackage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_1
    const-string v2, "loadURL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "init"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "reload"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "stopLoading"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "loadId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v2, "loadHTMLString"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move p1, v5

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "URL"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v1, p1}, Lcom/sigmob/sdk/mraid2/c;->b(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "url"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_c

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid2/c;->b(Ljava/lang/String;)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_c

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_9

    goto/16 :goto_2

    :cond_9
    const-string p2, "x"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "y"

    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "w"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "h"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-lez v2, :cond_a

    int-to-float v2, v2

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    :cond_a
    if-lez p1, :cond_b

    int-to-float p1, p1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    :cond_b
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float p1, p2

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setX(F)V

    int-to-float p1, v0

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setY(F)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {p1, v1, p2}, Lcom/sigmob/sdk/mraid2/t;->a(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->c()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_4
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/x;->j()V

    return-void

    :pswitch_5
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/x;->k()V

    return-void

    :pswitch_6
    const-string p1, "id"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v1, p1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "html"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid2/c;->a(Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x558f02fe -> :sswitch_7
        -0x416ad35f -> :sswitch_6
        -0x38833526 -> :sswitch_5
        -0x37b57e67 -> :sswitch_4
        0x316510 -> :sswitch_3
        0x5d2a96d -> :sswitch_2
        0x141092a9 -> :sswitch_1
        0x2b1ffb46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    const-string v0, "uniqueId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/mraid/n;

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->e(Lcom/sigmob/sdk/mraid2/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/mraid/n;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/mraid/n;->a()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->k(Lcom/sigmob/sdk/mraid2/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/sigmob/sdk/mraid2/c;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/sdk/mraid2/c;

    if-nez p1, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {p1}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/mraid2/t;->a()V

    return-void
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/mraid2/c;->b(Lcom/sigmob/sdk/mraid2/c;Z)Z

    const-string v0, "flag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/sigmob/sdk/mraid2/t;->a(Lcom/sigmob/sdk/mraid2/c;I)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/c;->m(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/sigmob/sdk/mraid/r;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sigmob/sdk/mraid/r;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/mraid/r;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/w;->a(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v2}, Lcom/sigmob/sdk/mraid2/c;->l(Lcom/sigmob/sdk/mraid2/c;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v0}, Lcom/sigmob/sdk/mraid2/c;->j(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/t;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v1}, Lcom/sigmob/sdk/mraid2/c;->h(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/mraid2/c;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sigmob/sdk/mraid2/t;->b(Lcom/sigmob/sdk/mraid2/c;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotionEvent: json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "args"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "uniqueId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "onMotionViewEvent: uniqueId is null."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/mraid/n;

    instance-of v4, v3, Lcom/sigmob/sdk/mraid2/h;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lcom/sigmob/sdk/mraid2/h;

    :cond_2
    const-string v3, "subEvent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "destroy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "init"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "init_sensitivity_raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v4

    :goto_1
    const-string p1, ""

    const-string v3, "type"

    packed-switch v5, :pswitch_data_0

    return-void

    :pswitch_0
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid2/h;->b()V

    :cond_6
    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sensitivity"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "shakeTriggerType"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "widgetIntervalTime"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "shakeTimeThreshold"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMotionEvent: type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    new-instance v4, Lcom/sigmob/sdk/mraid2/h;

    invoke-direct {v4, v2, p1}, Lcom/sigmob/sdk/mraid2/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sigmob/sdk/mraid2/c$3$2;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/c$3$2;-><init>(Lcom/sigmob/sdk/mraid2/c$3;)V

    invoke-virtual {v4, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    new-instance p1, Lcom/sigmob/sdk/base/models/SensorEntity;

    invoke-direct {p1, v1, v3, v5, v0}, Lcom/sigmob/sdk/base/models/SensorEntity;-><init>(IIII)V

    invoke-virtual {v4, p1}, Lcom/sigmob/sdk/mraid2/h;->a(Lcom/sigmob/sdk/base/models/SensorEntity;)V

    invoke-virtual {v4}, Lcom/sigmob/sdk/mraid/o;->d()V

    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sensitivity_raw"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcom/sigmob/sdk/mraid2/h;

    invoke-direct {v1, v2, p1}, Lcom/sigmob/sdk/mraid2/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/sigmob/sdk/mraid2/c$3$3;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/c$3$3;-><init>(Lcom/sigmob/sdk/mraid2/c$3;)V

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/o;->b(I)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/o;->d()V

    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

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

.method public g(Lorg/json/JSONObject;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotionViewEvent: json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string v0, "args"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-string v2, "uniqueId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "onMotionViewEvent: uniqueId is null."

    invoke-static {p1}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v3, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/mraid/n;

    instance-of v4, v3, Lcom/sigmob/sdk/mraid/l;

    if-eqz v4, :cond_2

    move-object v1, v3

    check-cast v1, Lcom/sigmob/sdk/mraid/l;

    :cond_2
    const-string v3, "subEvent"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "hidden"

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "shakeTriggerType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "sensitivity_raw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v5, 0x8

    goto :goto_1

    :sswitch_2
    const-string v3, "destroy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x7

    goto :goto_1

    :sswitch_3
    const-string v3, "sensitivity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "frame"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "init"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_8
    const-string v3, "widgetIntervalTime"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_9
    const-string v3, "shakeTimeThreshold"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->c(I)V

    return-void

    :pswitch_1
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->b(I)V

    return-void

    :pswitch_2
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/l;->b()V

    :cond_d
    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->a(I)V

    return-void

    :pswitch_4
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/sigmob/sdk/mraid/o;->d()V

    return-void

    :pswitch_5
    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/mraid/l;->a(Lorg/json/JSONObject;)V

    return-void

    :pswitch_6
    const-string p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lcom/sigmob/sdk/mraid/l;

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sigmob/sdk/mraid2/c$3;->a:Lcom/sigmob/sdk/mraid2/c;

    invoke-static {v3}, Lcom/sigmob/sdk/mraid2/c;->a(Lcom/sigmob/sdk/mraid2/c;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sigmob/sdk/mraid/l;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance p1, Lcom/sigmob/sdk/mraid2/c$3$4;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/mraid2/c$3$4;-><init>(Lcom/sigmob/sdk/mraid2/c$3;)V

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/mraid/o;->a(Lcom/sigmob/sdk/mraid2/j;)V

    sget-object p1, Lcom/sigmob/sdk/mraid2/x;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_7
    if-eqz v1, :cond_e

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/l;->a(Z)V

    return-void

    :pswitch_8
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->d(I)V

    return-void

    :pswitch_9
    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sigmob/sdk/mraid/o;->e(I)V

    :cond_e
    :goto_2
    return-void

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
