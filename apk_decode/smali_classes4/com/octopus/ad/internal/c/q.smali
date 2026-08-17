.class public Lcom/octopus/ad/internal/c/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "${SECOND_PRICE}"

.field public static b:Ljava/lang/String; = "${WIN_PRICE}"

.field public static c:Ljava/lang/String; = "${LOSS_REASON}"

.field public static d:Ljava/lang/String; = "${WIN_BIDDER}"

.field public static e:Ljava/lang/String; = "${SLOT_ID}"

.field public static f:Ljava/lang/String; = "${REQ_ID}"

.field public static g:Ljava/lang/String; = "${SDK_VERSION}"

.field public static h:Ljava/lang/String; = "${DEVICE_ID}"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 81
    const-string v0, "OctopusAd"

    const-string v1, "An Exception Caught"

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/octopus/ad/internal/c/q;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 91
    sget-object p1, Lcom/octopus/ad/internal/c/q;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/octopus/ad/internal/c/q;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lcom/octopus/ad/internal/c/q;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 96
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    sget-object p1, Lcom/octopus/ad/internal/c/q;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/octopus/ad/a/d;Lcom/octopus/ad/a/e;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    if-eqz p0, :cond_18

    .line 9
    const-string v0, "__oct_click_type__"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_13

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->t()Lcom/octopus/ad/a/e$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->t()Lcom/octopus/ad/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/e$a;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->t()Lcom/octopus/ad/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/e$a;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->t()Lcom/octopus/ad/a/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/a/e$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_down_x__"

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_down_y__"

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 23
    :goto_2
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_down_time__"

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 25
    :cond_6
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 26
    :goto_3
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_up_x__"

    if-nez v0, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 28
    :cond_7
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 29
    :goto_4
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_up_y__"

    if-nez v0, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 31
    :cond_8
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 32
    :goto_5
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_up_time__"

    if-nez v0, :cond_9

    .line 33
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 34
    :cond_9
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 35
    :goto_6
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_x_max_acc__"

    if-nez v0, :cond_a

    .line 36
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->s()I

    move-result v2

    invoke-static {v0, v2}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    .line 38
    :cond_a
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 39
    :goto_7
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_y_max_acc__"

    if-nez v0, :cond_b

    .line 40
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->s()I

    move-result v2

    invoke-static {v0, v2}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 42
    :cond_b
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 43
    :goto_8
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_z_max_acc__"

    if-nez v0, :cond_c

    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->s()I

    move-result v2

    invoke-static {v0, v2}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 46
    :cond_c
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 47
    :goto_9
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_shake_acc__"

    if-nez v0, :cond_d

    .line 48
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    .line 49
    :cond_d
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 50
    :goto_a
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_shake_ang__"

    if-nez v0, :cond_e

    .line 51
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    .line 52
    :cond_e
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 53
    :goto_b
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_shake_cnt__"

    if-nez v0, :cond_f

    .line 54
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 55
    :cond_f
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    :goto_c
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_turn_x__"

    if-nez v0, :cond_10

    .line 57
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 58
    :cond_10
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 59
    :goto_d
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_turn_y__"

    if-nez v0, :cond_11

    .line 60
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    .line 61
    :cond_11
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 62
    :goto_e
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_turn_z__"

    if-nez v0, :cond_12

    .line 63
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 64
    :cond_12
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 65
    :goto_f
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_turn_time__"

    if-nez v0, :cond_13

    .line 66
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 67
    :cond_13
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 68
    :goto_10
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_ms_time__"

    if-nez v0, :cond_14

    .line 69
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 70
    :cond_14
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 71
    :goto_11
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "__oct_s_time__"

    if-nez v0, :cond_15

    .line 72
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->h()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 73
    :cond_15
    invoke-virtual {p2}, Lcom/octopus/ad/a/e;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 74
    :goto_12
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 75
    const-string p2, "__oct_container_w__"

    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_16
    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->k()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 77
    const-string p2, "__oct_container_h__"

    invoke-virtual {p1}, Lcom/octopus/ad/a/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 78
    :cond_17
    sget-object p1, Lcom/octopus/ad/internal/c/a;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 79
    const-string p1, "__oct_screen_ppi__"

    sget-object p2, Lcom/octopus/ad/internal/c/a;->p:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_18
    :goto_13
    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/octopus/ad/a/h;JJ)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    .line 1
    const-string v3, "__oct_video_start_ts__"

    if-nez v2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/octopus/ad/a/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/octopus/ad/a/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    cmp-long p2, p4, v0

    .line 5
    const-string p3, "__oct_video_end_ts__"

    if-nez p2, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/octopus/ad/a/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/octopus/ad/a/h;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    .line 8
    :cond_4
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/octopus/ad/internal/c/q;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    sget-object p1, Lcom/octopus/ad/internal/c/q;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_1
    sget-object p1, Lcom/octopus/ad/internal/c/q;->g:Ljava/lang/String;

    const-string p2, "2.6.5.7"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method
