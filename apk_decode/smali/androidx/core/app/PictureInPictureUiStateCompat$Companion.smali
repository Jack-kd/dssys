.class public final Landroidx/core/app/PictureInPictureUiStateCompat$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/PictureInPictureUiStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/core/app/PictureInPictureUiStateCompat$Companion;",
        "",
        "<init>",
        "()V",
        "fromPictureInPictureUiState",
        "Landroidx/core/app/PictureInPictureUiStateCompat;",
        "uiState",
        "Landroid/app/PictureInPictureUiState;",
        "core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/PictureInPictureUiStateCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPictureInPictureUiState(Landroid/app/PictureInPictureUiState;)Landroidx/core/app/PictureInPictureUiStateCompat;
    .locals 3
    .param p1    # Landroid/app/PictureInPictureUiState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "uiState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x23

    .line 9
    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/core/app/PictureInPictureUiStateCompat;

    .line 13
    .line 14
    invoke-static {p1}, Landroidx/core/app/u;->a(Landroid/app/PictureInPictureUiState;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-static {p1}, Landroidx/core/app/v;->a(Landroid/app/PictureInPictureUiState;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-direct {v0, v1, p1}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    const/16 v1, 0x1f

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-lt v0, v1, :cond_1

    .line 30
    .line 31
    new-instance v0, Landroidx/core/app/PictureInPictureUiStateCompat;

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/core/app/u;->a(Landroid/app/PictureInPictureUiState;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-direct {v0, p1, v2}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    new-instance p1, Landroidx/core/app/PictureInPictureUiStateCompat;

    .line 42
    .line 43
    invoke-direct {p1, v2, v2}, Landroidx/core/app/PictureInPictureUiStateCompat;-><init>(ZZ)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method
