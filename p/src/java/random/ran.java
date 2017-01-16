package random;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Deepansh
 */
import java.security.SecureRandom;
import java.math.BigInteger;

public final class ran {
  private final SecureRandom random = new SecureRandom();

  public String nextSessionId() {
    return new BigInteger(30, random).toString(32);
  }  
}
