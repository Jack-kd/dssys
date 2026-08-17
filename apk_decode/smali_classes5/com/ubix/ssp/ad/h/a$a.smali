.class Lcom/ubix/ssp/ad/h/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/s$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/h/a;->setShakeSensor(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ubix/ssp/ad/h/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/h/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    iput-object p2, p0, Lcom/ubix/ssp/ad/h/a$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    .line 1
    const-string p2, "3"

    :try_start_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->a(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->f()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->b(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/e/a0/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/a0/s;->a()V

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->m(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "__TRI_VAL__"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/h/a;->s(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "__CLICK_AREA__"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/h/a;->t(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "__CLICK_TRIGGER__"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/h/a;->u(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/g/k/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {p1}, Lcom/ubix/ssp/ad/h/a;->u(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/g/k/e;

    move-result-object p1

    iget-object p2, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {p2}, Lcom/ubix/ssp/ad/h/a;->v(Lcom/ubix/ssp/ad/h/a;)I

    move-result p2

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/a;->w(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 12

    .line 2
    const-string v0, "__TURN_TIME__"

    const-string v1, ""

    const-string v2, "__UBIX_TURN_TARGET__"

    const-string v3, "__TURN_Z__"

    const-string v4, "__TURN_Y__"

    const-string v5, "__TURN_X__"

    const-string v6, "__Z_MAX_ACC__"

    const-string v7, "__Y_MAX_ACC__"

    const-string v8, "__X_MAX_ACC__"

    const-string v9, "%.2f"

    :try_start_0
    iget-object v10, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-virtual {v10}, Landroid/view/View;->isShown()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/y/c;->a(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSensorInfo="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/u;->e(Ljava/lang/String;)V

    const-string v10, "__SENSOR_INFO_TYPE__"

    invoke-virtual {p1, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v10}, Lcom/ubix/ssp/ad/h/a;->x(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v8}, Lcom/ubix/ssp/ad/h/a;->y(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v7}, Lcom/ubix/ssp/ad/h/a;->c(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v6}, Lcom/ubix/ssp/ad/h/a;->d(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v5}, Lcom/ubix/ssp/ad/h/a;->e(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v4}, Lcom/ubix/ssp/ad/h/a;->f(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v3}, Lcom/ubix/ssp/ad/h/a;->g(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v2}, Lcom/ubix/ssp/ad/h/a;->h(Lcom/ubix/ssp/ad/h/a;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->u(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/g/k/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v0}, Lcom/ubix/ssp/ad/h/a;->u(Lcom/ubix/ssp/ad/h/a;)Lcom/ubix/ssp/ad/g/k/e;

    move-result-object v0

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/a$a;->b:Lcom/ubix/ssp/ad/h/a;

    invoke-static {v1}, Lcom/ubix/ssp/ad/h/a;->i(Lcom/ubix/ssp/ad/h/a;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/ubix/ssp/ad/g/k/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
