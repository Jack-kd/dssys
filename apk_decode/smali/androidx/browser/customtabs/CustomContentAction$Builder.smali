.class public final Landroidx/browser/customtabs/CustomContentAction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomContentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mId:I

.field private final mLabel:Ljava/lang/String;

.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private final mTargetType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p4, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-ne p4, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "Invalid target type: "

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    .line 43
    .line 44
    iput-object p2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 47
    .line 48
    iput p4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "Id cannot be set to negative numbers."

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Label cannot be empty."

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method


# virtual methods
.method public build()Landroidx/browser/customtabs/CustomContentAction;
    .locals 6

    .line 1
    new-instance v0, Landroidx/browser/customtabs/CustomContentAction;

    .line 2
    .line 3
    iget v1, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mId:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mLabel:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 8
    .line 9
    iget v4, p0, Landroidx/browser/customtabs/CustomContentAction$Builder;->mTargetType:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/browser/customtabs/CustomContentAction;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;ILandroidx/browser/customtabs/CustomContentAction$1;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
