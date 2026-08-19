.class public Lcom/fl/saas/adx/util/LogcatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_TAG:Ljava/lang/String; = "FLSdk-LogcatUtil"

.field public static isDebug:Z = true

.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0xc00

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FLSdk-LogcatUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getFunctionName()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/fl/saas/adx/util/LogcatUtil;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getMsgFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->getFunctionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug:Z

    return v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/fl/saas/adx/util/LogcatUtil;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/fl/saas/adx/util/LogcatUtil;->getMsgFormat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
