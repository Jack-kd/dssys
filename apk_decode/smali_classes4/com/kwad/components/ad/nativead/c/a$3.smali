.class final Lcom/kwad/components/ad/nativead/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/c/a;->fQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic qM:Lcom/kwad/components/ad/nativead/c/a;


# direct methods
.method public constructor <init>(Lcom/kwad/components/ad/nativead/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/c/a;->e(Lcom/kwad/components/ad/nativead/c/a;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    invoke-static {v0, v1}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/kwad/components/ad/nativead/c/a;->e(Lcom/kwad/components/ad/nativead/c/a;)Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->d(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/sdk/widget/KSFrameLayout;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    int-to-float v2, v2

    .line 49
    invoke-static {v1, v2}, Lcom/kwad/sdk/c/a/a;->px2dip(Landroid/content/Context;F)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->f(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-ne v0, v2, :cond_1

    .line 60
    .line 61
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->g(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eq v1, v2, :cond_2

    .line 68
    .line 69
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v3, "\u76d1\u542c\u56681 - \u5c3a\u5bf8: "

    .line 72
    .line 73
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v3, "x"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, " old: "

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v4, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/kwad/components/ad/nativead/c/a;->f(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/kwad/components/ad/nativead/c/a;->g(Lcom/kwad/components/ad/nativead/c/a;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v3, "NativeTKView"

    .line 118
    .line 119
    invoke-static {v3, v2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 123
    .line 124
    invoke-static {v2, v0}, Lcom/kwad/components/ad/nativead/c/a;->a(Lcom/kwad/components/ad/nativead/c/a;I)I

    .line 125
    .line 126
    .line 127
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 128
    .line 129
    invoke-static {v2, v1}, Lcom/kwad/components/ad/nativead/c/a;->b(Lcom/kwad/components/ad/nativead/c/a;I)I

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 133
    .line 134
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->h(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/ae$d;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    if-eqz v2, :cond_2

    .line 139
    .line 140
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/c/a$3;->qM:Lcom/kwad/components/ad/nativead/c/a;

    .line 141
    .line 142
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/c/a;->h(Lcom/kwad/components/ad/nativead/c/a;)Lcom/kwad/components/core/webview/jshandler/ae$d;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-interface {v2, v0, v1}, Lcom/kwad/components/core/webview/jshandler/ae$d;->u(II)V

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    return-void
.end method
