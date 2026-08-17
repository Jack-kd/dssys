.class final Lcom/anythink/core/common/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/d/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/anythink/core/common/h/as;

.field final synthetic f:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;Landroid/content/Context;Lcom/anythink/core/common/d/a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/f$6;->f:Lcom/anythink/core/common/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/f$6;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/core/common/f$6;->b:Lcom/anythink/core/common/d/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/core/common/f$6;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/core/common/f$6;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/anythink/core/common/f$6;->e:Lcom/anythink/core/common/h/as;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/anythink/core/common/v;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lcom/anythink/core/common/f$6;->a:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/anythink/core/e/o;->a(Landroid/content/Context;)Lcom/anythink/core/e/o;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Lcom/anythink/core/common/f$6;->f:Lcom/anythink/core/common/f;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/anythink/core/e/o;->a(Ljava/lang/String;)Lcom/anythink/core/e/m;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    if-eqz v10, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, v0, Lcom/anythink/core/common/f$6;->f:Lcom/anythink/core/common/f;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/anythink/core/common/f;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/v;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lcom/anythink/core/common/f$6;->b:Lcom/anythink/core/common/d/a;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const-string v2, "10019"

    .line 48
    .line 49
    const-string v3, ""

    .line 50
    .line 51
    invoke-static {v2, v3, v3}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Lcom/anythink/core/common/d/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1, v10}, Lcom/anythink/core/common/v;->a(Lcom/anythink/core/e/m;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v3, v0, Lcom/anythink/core/common/f$6;->f:Lcom/anythink/core/common/f;

    .line 70
    .line 71
    iget-object v4, v0, Lcom/anythink/core/common/f$6;->a:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v5, v0, Lcom/anythink/core/common/f$6;->c:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v0, Lcom/anythink/core/common/f$6;->d:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v7, v0, Lcom/anythink/core/common/f$6;->e:Lcom/anythink/core/common/h/as;

    .line 78
    .line 79
    iget-object v8, v0, Lcom/anythink/core/common/f$6;->b:Lcom/anythink/core/common/d/a;

    .line 80
    .line 81
    move-object v9, v3

    .line 82
    invoke-static/range {v3 .. v10}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget-object v11, v0, Lcom/anythink/core/common/f$6;->f:Lcom/anythink/core/common/f;

    .line 87
    .line 88
    iget-object v12, v0, Lcom/anythink/core/common/f$6;->a:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v13, v0, Lcom/anythink/core/common/f$6;->c:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v14, v0, Lcom/anythink/core/common/f$6;->d:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v15, v0, Lcom/anythink/core/common/f$6;->e:Lcom/anythink/core/common/h/as;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/anythink/core/common/f$6;->b:Lcom/anythink/core/common/d/a;

    .line 97
    .line 98
    move-object/from16 v16, v1

    .line 99
    .line 100
    invoke-virtual/range {v11 .. v16}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
