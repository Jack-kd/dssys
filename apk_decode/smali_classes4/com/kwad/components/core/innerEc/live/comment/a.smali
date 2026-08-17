.class public final Lcom/kwad/components/core/innerEc/live/comment/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 7
    .line 8
    invoke-direct {v1, p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;-><init>(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->user:Lcom/kwad/components/core/innerEc/live/base/UserInfo;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/kwad/components/core/innerEc/live/base/UserInfo;->userName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p1, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->user:Lcom/kwad/components/core/innerEc/live/base/UserInfo;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/kwad/components/core/innerEc/live/base/UserInfo;->userName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, "\uff1a"

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0, p0}, Lcom/kwad/components/core/innerEc/live/i/f;->a(Ljava/lang/CharSequence;Landroid/content/Context;)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v2, Lcom/kwad/sdk/R$color;->ksad_color_FFDA73:I

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->bk(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object v0, p1, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->content:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, p0}, Lcom/kwad/components/core/innerEc/live/i/f;->a(Ljava/lang/CharSequence;Landroid/content/Context;)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/base/QLiveMessage;->user:Lcom/kwad/components/core/innerEc/live/base/UserInfo;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/kwad/components/core/innerEc/live/base/UserInfo;->userName:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    sget p1, Lcom/kwad/sdk/R$color;->ksad_color_FFDA73:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    sget p1, Lcom/kwad/sdk/R$color;->ksad_color_FEFEFE:I

    .line 74
    .line 75
    :goto_0
    invoke-virtual {v0, p1}, Lcom/kwad/components/core/innerEc/live/widget/m$a;->bk(I)Lcom/kwad/components/core/innerEc/live/widget/m$a;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lcom/kwad/components/core/innerEc/live/widget/m;->a(Lcom/kwad/components/core/innerEc/live/widget/m$a;)Lcom/kwad/components/core/innerEc/live/widget/m;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/kwad/components/core/innerEc/live/widget/m;->ti()Landroid/text/SpannableStringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/high16 v0, 0x41200000    # 10.0f

    .line 86
    .line 87
    invoke-static {p0, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {}, Lcom/kwad/sdk/core/c/b;->LW()Lcom/kwad/sdk/core/c/b;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/kwad/sdk/core/c/b;->getApplication()Landroid/app/Application;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    int-to-float p0, p0

    .line 100
    invoke-static {v0, p1, p0}, Lcom/kwad/components/core/innerEc/f;->a(Landroid/app/Application;Ljava/lang/CharSequence;F)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method
