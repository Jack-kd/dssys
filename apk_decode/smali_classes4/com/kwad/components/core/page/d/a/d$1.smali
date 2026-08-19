.class final Lcom/kwad/components/core/page/d/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/page/d/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aex:Lcom/kwad/components/core/page/d/a/d;


# direct methods
.method public constructor <init>(Lcom/kwad/components/core/page/d/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/kwad/components/core/r/a;->wp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x1f4

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p0, v1, v2}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/d;->a(Lcom/kwad/components/core/page/d/a/d;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/d;->b(Lcom/kwad/components/core/page/d/a/d;)Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/kwad/components/core/page/d/a/d;->a(Lcom/kwad/components/core/page/d/a/d;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "\u5012\u8ba1\u65f6%d\u79d2"

    .line 46
    .line 47
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/d;->c(Lcom/kwad/components/core/page/d/a/d;)I

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 64
    .line 65
    invoke-static {v1}, Lcom/kwad/components/core/page/d/a/d;->a(Lcom/kwad/components/core/page/d/a/d;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/r/a;->bW(I)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v0, 0x3e8

    .line 73
    .line 74
    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/core/page/d/a/d$1;->aex:Lcom/kwad/components/core/page/d/a/d;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/kwad/components/core/page/d/a/d;->b(Lcom/kwad/components/core/page/d/a/d;)Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const-string v3, "\u5df2\u83b7\u5f97\u6743\u76ca"

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/kwad/components/core/page/d/a/d$1$1;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/kwad/components/core/page/d/a/d$1$1;-><init>(Lcom/kwad/components/core/page/d/a/d$1;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/utils/by;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lcom/kwad/components/core/r/a;->wm()Lcom/kwad/components/core/r/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/r/a;->ba(Z)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
