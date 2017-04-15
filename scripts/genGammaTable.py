# Creates a gamma-corrected lookup table
import math


def gamma(nsteps, gamma_level):
        gammaed_up = [math.pow(x, gamma_level) for x in range(nsteps)]
        return [x/max(gammaed_up) for x in gammaed_up]


def rounder(top_value, gammas):
        return [min(top_value, round(x * top_value)) for x in gammas]

if __name__ == "__main__":
        myGamma = 2.3
        steps = 1024
        output = open("gamma.h", "w")
        output.write("/* %d-step brightness table: gamma = %s */\n\n" % (steps, myGamma))
        output.write("const uint8_t gamma_table[%d] = {" % steps)
        index = 0
        for value in rounder(255, gamma(steps, myGamma)):
            output.write(" %3d," % value)
            index += 1
            if index % 16 == 0 and index != 0:
                output.write("\n")
                output.write(" "*35)

        output.write("};\n")
        output.close()

