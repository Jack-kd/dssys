.class public Lcom/fl/saas/J0;
.super Lcom/fl/saas/k0;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private l:Lcom/fl/saas/K0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "S2S"

    .line 2
    .line 3
    const-class v1, Lcom/fl/saas/J0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/CommConstant;->getClassTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/fl/saas/J0;->m:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fl/saas/k0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/fl/saas/J0;)Lcom/fl/saas/K0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fl/saas/J0;->l:Lcom/fl/saas/K0;

    return-object p0
.end method

.method public static synthetic a(Lcom/fl/saas/J0;Lcom/fl/saas/K0;)Lcom/fl/saas/K0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/fl/saas/J0;->l:Lcom/fl/saas/K0;

    return-object p1
.end method

.method public static a(Lcom/fl/saas/j;Landroid/view/View;)Lcom/fl/saas/adx/api/mixNative/NativeMaterial;
    .locals 1

    .line 3
    new-instance v0, Lcom/fl/saas/J0$b;

    invoke-direct {v0, p0, p1}, Lcom/fl/saas/J0$b;-><init>(Lcom/fl/saas/j;Landroid/view/View;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/fl/saas/J0;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/k0;->c()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/fl/saas/J0;)Lcom/fl/saas/adx/base/innterNative/NativeStyle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/k0;->b()Lcom/fl/saas/adx/base/innterNative/NativeStyle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/fl/saas/J0;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fl/saas/k0;->c()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 5

    .line 1
    sget-object v0, Lcom/fl/saas/J0;->m:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "loadNative"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/fl/saas/adx/util/LogcatUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/fl/saas/R0;->a()Lcom/fl/saas/R0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/fl/saas/k0;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lcom/fl/saas/k0;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/fl/saas/k0;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    new-instance v4, Lcom/fl/saas/J0$a;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/fl/saas/J0$a;-><init>(Lcom/fl/saas/J0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fl/saas/R0;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/fl/saas/n0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
