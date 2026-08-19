.class final Lcom/kwad/components/ad/nativead/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/nativead/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/d;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic pE:Lcom/kwad/components/ad/nativead/d;

.field final synthetic pL:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kwad/components/ad/nativead/c/a;->fT()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/kwad/components/ad/nativead/c/a;->fR()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/high16 v2, 0x42c80000    # 100.0f

    .line 40
    .line 41
    mul-float/2addr v0, v2

    .line 42
    float-to-int v0, v0

    .line 43
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 44
    .line 45
    invoke-static {v2, v0}, Lcom/kwad/sdk/utils/cb;->r(Landroid/view/View;I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->l(Lcom/kwad/components/ad/nativead/d;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ce()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Lcom/kwad/components/core/e/d/a$a;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/kwad/sdk/wrapper/m;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v2, v0}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->b(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v2, v0}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/d;->m(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/core/e/d/d;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->az(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-instance v1, Lcom/kwad/components/ad/nativead/d$9$1;

    .line 106
    .line 107
    invoke-direct {v1, p0, p1}, Lcom/kwad/components/ad/nativead/d$9$1;-><init>(Lcom/kwad/components/ad/nativead/d$9;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/kwad/components/ad/nativead/d;->a(Lcom/kwad/components/ad/nativead/d;Landroid/content/Context;)Landroid/os/Vibrator;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/by;->a(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 136
    .line 137
    .line 138
    const/4 p1, 0x1

    .line 139
    return p1

    .line 140
    :cond_2
    :goto_0
    return v1
.end method
