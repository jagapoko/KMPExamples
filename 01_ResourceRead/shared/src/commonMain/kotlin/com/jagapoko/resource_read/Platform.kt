package com.jagapoko.resource_read

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform