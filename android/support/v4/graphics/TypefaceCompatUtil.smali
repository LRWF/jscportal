.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 172
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 119
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 124
    :cond_8
    :try_start_8
    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1a

    if-nez p1, :cond_12

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0

    .line 127
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_1a
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    .line 162
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_e

    .line 163
    :try_start_4
    invoke-static {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 165
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_c
    move-exception p0

    goto :goto_10

    :catchall_e
    move-exception p0

    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 7

    .line 138
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_2a
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    const/16 p0, 0x400

    .line 141
    :try_start_d
    new-array p0, p0, [B

    .line 143
    :goto_f
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    .line 144
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_25
    .catchall {:try_start_d .. :try_end_19} :catchall_22

    goto :goto_f

    :cond_1a
    const/4 p0, 0x1

    .line 151
    invoke-static {v3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :catchall_22
    move-exception p0

    move-object v2, v3

    goto :goto_4c

    :catch_25
    move-exception p0

    move-object v2, v3

    goto :goto_2b

    :catchall_28
    move-exception p0

    goto :goto_4c

    :catch_2a
    move-exception p0

    :goto_2b
    :try_start_2b
    const-string p1, "TypefaceCompatUtil"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error copying resource contents to temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_28

    .line 151
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    .line 151
    :goto_4c
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_27
    const/16 v2, 0x64

    if-ge v1, v2, :cond_4d

    .line 65
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    :try_start_43
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_4a

    if-eqz v3, :cond_4a

    return-object v2

    :catch_4a
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "r"

    .line 99
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_13

    if-eqz p0, :cond_12

    .line 108
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_6b

    :cond_12
    return-object v0

    .line 103
    :cond_13
    :try_start_13
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_54
    .catchall {:try_start_13 .. :try_end_1c} :catchall_51

    .line 104
    :try_start_1c
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 106
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2c} :catch_3a
    .catchall {:try_start_1c .. :try_end_2c} :catchall_37

    if-eqz p1, :cond_31

    .line 107
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_54
    .catchall {:try_start_2e .. :try_end_31} :catchall_51

    :cond_31
    if-eqz p0, :cond_36

    .line 108
    :try_start_33
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_6b

    :cond_36
    return-object p2

    :catchall_37
    move-exception p2

    move-object v1, v0

    goto :goto_40

    :catch_3a
    move-exception p2

    .line 103
    :try_start_3b
    throw p2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v1

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    :goto_40
    if-eqz p1, :cond_50

    if-eqz v1, :cond_4d

    .line 107
    :try_start_44
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_51

    goto :goto_50

    :catch_48
    move-exception p1

    :try_start_49
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_50

    :cond_4d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_50
    :goto_50
    throw p2
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_54
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception p1

    move-object p2, v0

    goto :goto_5a

    :catch_54
    move-exception p1

    .line 99
    :try_start_55
    throw p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_5a
    if-eqz p0, :cond_6a

    if-eqz p2, :cond_67

    .line 108
    :try_start_5e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_6b

    goto :goto_6a

    :catch_62
    move-exception p0

    :try_start_63
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_67
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_6a
    :goto_6a
    throw p1
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6b} :catch_6b

    :catch_6b
    return-object v0
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    .line 83
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_36

    .line 84
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 86
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_1f
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    if-eqz v1, :cond_1b

    .line 87
    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_36

    :cond_1b
    return-object p0

    :catchall_1c
    move-exception p0

    move-object v2, v0

    goto :goto_25

    :catch_1f
    move-exception p0

    .line 83
    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception v2

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    :goto_25
    if-eqz v1, :cond_35

    if-eqz v2, :cond_32

    .line 87
    :try_start_29
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_36

    goto :goto_35

    :catch_2d
    move-exception v1

    :try_start_2e
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_32
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_35
    :goto_35
    throw p0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_36

    :catch_36
    return-object v0
.end method
