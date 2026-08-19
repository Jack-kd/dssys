.class Lcom/ubix/ssp/ad/i/c$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/s$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/d/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/ubix/ssp/ad/d/a;

.field final synthetic c:Lcom/ubix/ssp/ad/i/c;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/i/c;Ljava/lang/Object;Lcom/ubix/ssp/ad/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    iput-object p2, p0, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/ubix/ssp/ad/i/c$j;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 6

    .line 1
    const-string p2, "3"

    const-string v0, "native_click_map_key"

    :try_start_0
    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;FZLjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v2}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ubix/ssp/ad/i/c$j;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :goto_0
    const-string v0, "__TRI_VAL__"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CLICK_AREA__"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "__CLICK_TRIGGER__"

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {p1}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$j;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string p2, "native_custom_confirm_window_listener_key"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    iget-object v1, p0, Lcom/ubix/ssp/ad/i/c$j;->b:Lcom/ubix/ssp/ad/d/a;

    iget-object p2, p0, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ViewGroup;

    const-string v5, "interaction_listener_key"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;

    if-nez p1, :cond_1

    :goto_1
    move-object v5, v4

    move-object v4, v2

    move-object v2, p2

    goto :goto_2

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/ubix/ssp/ad/g/c;

    goto :goto_1

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;Lcom/ubix/ssp/ad/d/a;Landroid/view/View;Ljava/util/HashMap;Lcom/ubix/ssp/open/nativee/UBiXNativeInteractionListener;Lcom/ubix/ssp/ad/g/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 17

    .line 2
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "__TURN_TIME__"

    const-string v3, ""

    const-string v4, "__UBIX_TURN_TARGET__"

    const-string v5, "__TURN_Z__"

    const-string v6, "__TURN_Y__"

    const-string v7, "__TURN_X__"

    const-string v8, "__Z_MAX_ACC__"

    const-string v9, "__Y_MAX_ACC__"

    const-string v10, "__X_MAX_ACC__"

    const-string v11, "native_click_map_key"

    const-string v12, "%.2f"

    :try_start_0
    iget-object v13, v1, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/View;->isShown()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v1, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v13, Landroid/view/ViewGroup;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v13, v2, v14, v15}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;FZLjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/ubix/ssp/ad/i/c$j;->a:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v13, v1, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-static {v13}, Lcom/ubix/ssp/ad/i/c;->a(Lcom/ubix/ssp/ad/i/c;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v13

    iget-object v14, v1, Lcom/ubix/ssp/ad/i/c$j;->b:Lcom/ubix/ssp/ad/d/a;

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    if-eqz v13, :cond_0

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :goto_0
    const-string v11, "__SENSOR_INFO_TYPE__"

    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v12, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v1, Lcom/ubix/ssp/ad/i/c$j;->c:Lcom/ubix/ssp/ad/i/c;

    invoke-virtual {v2, v0}, Lcom/ubix/ssp/ad/a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
