.class Lcom/fl/saas/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fl/saas/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fl/saas/e0;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/e0;


# direct methods
.method public constructor <init>(Lcom/fl/saas/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/e0$a;->a:Lcom/fl/saas/e0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fl/saas/e0$a;->a:Lcom/fl/saas/e0;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/fl/saas/e0;->c(Lcom/fl/saas/e0;)Lcom/fl/saas/d0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fl/saas/e0$a;->a:Lcom/fl/saas/e0;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/fl/saas/e0;->c(Lcom/fl/saas/e0;)Lcom/fl/saas/d0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/fl/saas/d0;->d()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fl/saas/e0$a;->a:Lcom/fl/saas/e0;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/fl/saas/e0;->c(Lcom/fl/saas/e0;)Lcom/fl/saas/d0;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/fl/saas/d0;->d()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Lcom/fl/saas/E0;->a(I)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fl/saas/e0$a;->a:Lcom/fl/saas/e0;

    .line 66
    .line 67
    invoke-static {v0, p1}, Lcom/fl/saas/e0;->a(Lcom/fl/saas/e0;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v0, 0x2

    .line 76
    invoke-virtual {p1, v0}, Lcom/fl/saas/E0;->a(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/E0;->a()Lcom/fl/saas/E0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Lcom/fl/saas/E0;->a(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
