.class final Lcom/anythink/core/common/f$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/core/common/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/common/d/a;Lcom/anythink/core/common/f;Lcom/anythink/core/e/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/anythink/core/common/h/as;

.field final synthetic e:Lcom/anythink/core/e/m;

.field final synthetic f:[Lcom/anythink/core/common/d/a;

.field final synthetic g:Landroid/content/Context;

.field final synthetic h:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;Lcom/anythink/core/e/m;[Lcom/anythink/core/common/d/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/anythink/core/common/f$8;->h:Lcom/anythink/core/common/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/anythink/core/common/f$8;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/anythink/core/common/f$8;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/anythink/core/common/f$8;->e:Lcom/anythink/core/e/m;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/anythink/core/common/f$8;->f:[Lcom/anythink/core/common/d/a;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/anythink/core/common/f$8;->g:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f$8;->g:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/anythink/core/common/f$8;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/as;)Lcom/anythink/core/common/h/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "placementId:"

    .line 19
    .line 20
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/anythink/core/common/f$8;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, ";result_callback:success;"

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v2, "Shared"

    .line 38
    .line 39
    invoke-static {v2, p1}, Lcom/anythink/core/common/v/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/anythink/core/common/h/c;->i()Lcom/anythink/core/common/h/n;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/anythink/core/common/h/bx;->aR()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    move-object v12, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string p1, ""

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    iget-object v3, p0, Lcom/anythink/core/common/f$8;->a:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v6, p0, Lcom/anythink/core/common/f$8;->c:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 64
    .line 65
    iget-object v7, p1, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v8, p0, Lcom/anythink/core/common/f$8;->e:Lcom/anythink/core/e/m;

    .line 68
    .line 69
    const-string v10, "1"

    .line 70
    .line 71
    const-string v11, "0"

    .line 72
    .line 73
    const/4 v9, 0x1

    .line 74
    invoke-static/range {v3 .. v12}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/anythink/core/common/f$8;->f:[Lcom/anythink/core/common/d/a;

    .line 78
    .line 79
    aget-object p1, p1, v1

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-interface {p1}, Lcom/anythink/core/common/d/a;->onAdLoaded()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lcom/anythink/core/common/v;->a()Lcom/anythink/core/common/v;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/anythink/core/common/h/as;->b()Lcom/anythink/core/api/ATAdRequest;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/v;->b(Ljava/lang/String;Lcom/anythink/core/api/ATAdRequest;)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lcom/anythink/core/common/f$8;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v7, p0, Lcom/anythink/core/common/f$8;->c:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 109
    .line 110
    iget-object v8, v0, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v9, p0, Lcom/anythink/core/common/f$8;->e:Lcom/anythink/core/e/m;

    .line 113
    .line 114
    const-string v12, "0"

    .line 115
    .line 116
    const-string v13, ""

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v10, 0x0

    .line 120
    const-string v11, "0"

    .line 121
    .line 122
    invoke-static/range {v4 .. v13}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/anythink/core/common/f$8;->f:[Lcom/anythink/core/common/d/a;

    .line 126
    .line 127
    aget-object v0, v0, v1

    .line 128
    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    invoke-interface {v0, p1}, Lcom/anythink/core/common/d/a;->onAdLoadFail(Lcom/anythink/core/api/AdError;)V

    .line 132
    .line 133
    .line 134
    :cond_2
    return-void
.end method

.method public final onAdLoaded()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/f$8;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/anythink/core/common/f$8;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/anythink/core/common/f$8;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/anythink/core/common/f$8;->d:Lcom/anythink/core/common/h/as;

    .line 8
    .line 9
    iget-object v4, v2, Lcom/anythink/core/common/h/as;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/anythink/core/common/f$8;->e:Lcom/anythink/core/e/m;

    .line 12
    .line 13
    const-string v8, "1"

    .line 14
    .line 15
    const-string v9, ""

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    const-string v7, "2"

    .line 20
    .line 21
    invoke-static/range {v0 .. v9}, Lcom/anythink/core/common/u/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/h/n;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/e/m;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/anythink/core/common/f$8;->f:[Lcom/anythink/core/common/d/a;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aget-object v0, v0, v1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/anythink/core/common/d/a;->onAdLoaded()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
