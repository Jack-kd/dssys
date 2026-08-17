.class Lcom/octopus/ad/internal/b/e$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/octopus/ad/internal/b/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->U()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->g(Lcom/octopus/ad/internal/b/e;Z)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->M(Lcom/octopus/ad/internal/b/e;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->F(Lcom/octopus/ad/internal/b/e;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->c(Lcom/octopus/ad/internal/b/e;I)I

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->H(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/d;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/d;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-interface {p1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdClose()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->ac()V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->N(Lcom/octopus/ad/internal/b/e;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e$22;->a:Lcom/octopus/ad/internal/b/e;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/e;->destroy()V

    .line 126
    .line 127
    .line 128
    return-void
.end method
