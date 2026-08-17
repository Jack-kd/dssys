.class Lcom/octopus/ad/internal/b/e$12$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/b/e$12$2$1;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/octopus/ad/internal/b/e$12$2$1;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/b/e$12$2$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->m(Lcom/octopus/ad/internal/b/e;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->a:Landroid/graphics/Bitmap;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->i:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->i:Landroid/widget/ImageView;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2$1;->a:Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/octopus/ad/internal/b/e;->n(Lcom/octopus/ad/internal/b/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :goto_1
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 103
    .line 104
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    .line 112
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x138e5

    .line 125
    .line 126
    .line 127
    invoke-interface {v1, v2}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 128
    .line 129
    .line 130
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 131
    .line 132
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 135
    .line 136
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e$12$2$1$1;->b:Lcom/octopus/ad/internal/b/e$12$2$1;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2$1;->b:Lcom/octopus/ad/internal/b/e$12$2;

    .line 147
    .line 148
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12$2;->a:Lcom/octopus/ad/internal/b/e$12;

    .line 149
    .line 150
    iget-object v1, v1, Lcom/octopus/ad/internal/b/e$12;->k:Lcom/octopus/ad/internal/b/e;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/octopus/ad/internal/b/e;->p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    return-void
.end method
